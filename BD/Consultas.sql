�# c o n s u l t a   p a r a   l a   l i s t a   d e   p a s a j e r o s .  
 S E L E C T  
 b l . f o l i o ,  
 b l . f e c h a _ v e n t a ,  
 b . n u m _ a u t o b u s ,  
 b l . n o m b r e P a s a j e r o ,  
 b l . a s i e n t o ,  
 b . h o r a _ s a l i d a ,  
 b . c i u d a d _ s a l i d a ,  
 b . c i u d a d _ l l e g a d a ,  
 b . p r e c i o  
 F R O M   b o l e t o s   b l , b o l e t o   b   w h e r e   b l . i d _ b o l e t o =   b . i d   a n d   b l . i d _ b o l e t o   =   %   o r d e r   b y   b l . a s i e n t o ;  
 # c o n s u l t a   l i s t a   d e   p a s a j e r o s   p o r   n o m b r e   d e   p a s a j e r o .  
 S E L E C T  
 b l . f o l i o ,  
 b l . f e c h a _ v e n t a ,  
 b . n u m _ a u t o b u s ,  
 b l . n o m b r e P a s a j e r o ,  
 b l . a s i e n t o ,  
 b . h o r a _ s a l i d a ,  
 b . c i u d a d _ s a l i d a ,  
 b . c i u d a d _ l l e g a d a ,  
 b . p r e c i o  
 F R O M   b o l e t o s   b l , b o l e t o   b   w h e r e   b l . i d _ b o l e t o =   b . i d   a n d   b l . i d _ b o l e t o   =   %   a n d   b l . n o m b r e P a s a j e r o   l i k e   ( ' %   % ' ) o r d e r   b y   b l . a s i e n t o ;  
 # c o n s u l t a   d e   l i s t a   d e   p a s a j e r o s   p o r   f e c h a   d e   s a l i d a  
 S E L E C T  
 b l . f o l i o ,  
 b l . f e c h a _ v e n t a ,  
 b . n u m _ a u t o b u s ,  
 b l . n o m b r e P a s a j e r o ,  
 b l . a s i e n t o ,  
 b . h o r a _ s a l i d a ,  
 b . c i u d a d _ s a l i d a ,  
 b . c i u d a d _ l l e g a d a ,  
 b . p r e c i o  
 F R O M   b o l e t o s   b l , b o l e t o   b   w h e r e   b l . i d _ b o l e t o =   b . i d   a n d   b l . i d _ b o l e t o   =   1  
 a n d   b . f e c h a _ s a l i d a   =   ' 2 0 1 0 - 0 1 - 0 1 '   a n d   b . h o r a _ s a l i d a =   ' 0 7 : 0 0 : 0 0 '   o r d e r   b y   b l . a s i e n t o ;  
 # C o n s u l t a   c h o f e r e s  
 s e l e c t   *   f r o m   c h o f e r ;  
 # c o n s u l t a   d e   a u t o b u s e s  
 s e l e c t   *   f r o m   a u t o b u s ;  
 # C o n s u l t a   d e   c h o f e r e s   q u e   c o n d u c e n   a l g u n   a u t o b u s .  
 s e l e c t   a . i d _ a u t o b u s   a s   ' i d ' , a . n u m _ a s i e n t o s   a s   ' a s i e n t o s ' , c . n o m b r e   a s   ' c h o f e r '   f r o m   a u t o b u s   a , c h o f e r   c   w h e r e   a . i d _ a u t o b u s = c . i d _ c h o f e r ;  
 # c o n s u l t a   d e   c h o f e r e s   e n   c o r r i d a s .  
 s e l e c t   b . i d   a s   ' c o r r i d a ' , c . n o m b r e   a s   ' c h o f e r ' , b . h o r a _ s a l i d a , b . h o r a _ l l e g a d a , b . f e c h a _ s a l i d a   f r o m   a u t o b u s   a , b o l e t o   b , c h o f e r   c   w h e r e   b . n u m _ a u t o b u s = a . i d _ a u t o b u s   a n d   a . i d _ c h o f e r = c . i d _ c h o f e r ;  
 # c o n s u l t a   g e n e r a l   d e   b o l e t o s .  
 s e l e c t   *   f r o m   b o l e t o ; 