/* Driver for sigman
Peter Walsh Nov 2020 */

unsigned char sigman (unsigned char n) { 
   unsigned char sum, i;

   sum=0;
   for (i=0; i<=n; i++) {
      sum=sum+i;
   }
   return (sum);
}

unsigned char driver(unsigned char n) {

   return (sigman(n));
}
