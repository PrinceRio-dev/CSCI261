/* Driver for paramC
Peter Walsh Nov 2020 */

unsigned char foo (short int i, unsigned char j, short int k, long int l) { 

   return (i+j+k+l);
}

unsigned char driver(void) {

   return (foo(1,2,3,4));
}
