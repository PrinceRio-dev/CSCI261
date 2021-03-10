/* Driver for sigman
Peter Walsh Nov 2020 */

short int sigman (short int n) { 
   short int sum, i;

   sum=0;
   for (i=0; i<=n; i++) {
      sum=sum+i;
   }
   return (sum);
}

short int driver(short int n) {

   return (sigman(n));
}
