#include <pthread.h>
#include <stdio.h>
#include <unistd.h>
#include <semaphore.h>

void *increment();
void *decrement();

int shared = 1;
sem_t semaphore;

int main() {
    sem_init(&semaphore, 0, 1);  // Initialize the semaphore
    pthread_t thread1, thread2;

    pthread_create(&thread1, NULL, increment, NULL);
    pthread_create(&thread2, NULL, decrement, NULL);

    pthread_join(thread1, NULL);
    pthread_join(thread2, NULL);

    printf("Nilai akhir dari variabel bersama adalah: %d\n", shared);

    sem_destroy(&semaphore);  // Destroy the semaphore after use

}
void *increment() {
    int x;
    
    printf("Utas 1 mencoba untuk mengurangi semaphore\n");
    sem_wait(&semaphore);  // Wait (decrement) semaphore
    
    printf("Utas 1 dapat masuk ke bagian kritisnya\n");
    x = shared;
    printf("Utas 1 membaca nilai dari variabel bersama sebagai: %d\n", x);
    
    x++;
    printf("Pembaruan lokal oleh Utas 1: %d\n", x);
    
    sleep(1);
    
    shared = x;
    printf("Nilai dari variabel bersama yang diperbarui oleh Utas 1 adalah: %d\n", shared);
    
    sem_post(&semaphore);  // Signal (increment) semaphore
    printf("Utas 1 menambah semaphore\n");
}
void *decrement() {
    int y;

    printf("Utas 2 mencoba untuk mengurangi semaphore\n");
    sem_wait(&semaphore);  // Wait (decrement) semaphore

    printf("Utas 2 dapat masuk ke bagian kritisnya\n");
    y = shared;
    printf("Utas 2 membaca nilai dari variabel bersama sebagai: %d\n", y);

    y--;
    printf("Pembaruan lokal oleh Utas 2: %d\n", y);

    sleep(1);

    shared = y;
    printf("Nilai dari variabel bersama yang diperbarui oleh Utas 2 adalah: %d\n", shared);

    sem_post(&semaphore);  // Signal (increment) semaphore
    printf("Utas 2 menambah semaphore\n");

}

