
_foo:     file format elf32-i386


Disassembly of section .text:

00000000 <main>:
#include "user.h"
#include "fcntl.h"

int 
main(int argc,char *argv[])
{
   0:	8d 4c 24 04          	lea    0x4(%esp),%ecx
   4:	83 e4 f0             	and    $0xfffffff0,%esp
   7:	ff 71 fc             	pushl  -0x4(%ecx)
   a:	55                   	push   %ebp
   b:	89 e5                	mov    %esp,%ebp
   d:	57                   	push   %edi
   e:	56                   	push   %esi
   f:	53                   	push   %ebx
  10:	51                   	push   %ecx
  11:	83 ec 18             	sub    $0x18,%esp
  14:	8b 19                	mov    (%ecx),%ebx
  16:	8b 71 04             	mov    0x4(%ecx),%esi
  int k,n,id;
  double x=0,z,d;
  if(argc < 2)
  19:	83 fb 01             	cmp    $0x1,%ebx
  1c:	0f 8e a8 00 00 00    	jle    ca <main+0xca>
    n=1;               //default value
  else
    n=atoi(argv[1]); //from command line
  22:	83 ec 0c             	sub    $0xc,%esp
  25:	ff 76 04             	pushl  0x4(%esi)
  28:	e8 c3 02 00 00       	call   2f0 <atoi>
  if(n<0||n>20)
  2d:	83 c4 10             	add    $0x10,%esp
  30:	83 f8 14             	cmp    $0x14,%eax
  int k,n,id;
  double x=0,z,d;
  if(argc < 2)
    n=1;               //default value
  else
    n=atoi(argv[1]); //from command line
  33:	89 c7                	mov    %eax,%edi
  if(n<0||n>20)
  35:	0f 86 d6 00 00 00    	jbe    111 <main+0x111>
    n=2;

  if(argc<3)
  3b:	83 fb 02             	cmp    $0x2,%ebx
  if(argc < 2)
    n=1;               //default value
  else
    n=atoi(argv[1]); //from command line
  if(n<0||n>20)
    n=2;
  3e:	bf 02 00 00 00       	mov    $0x2,%edi

  if(argc<3)
  43:	75 68                	jne    ad <main+0xad>
    d=1.0;
  45:	d9 e8                	fld1   
  if(argc < 2)
    n=1;               //default value
  else
    n=atoi(argv[1]); //from command line
  if(n<0||n>20)
    n=2;
  47:	bf 02 00 00 00       	mov    $0x2,%edi

  if(argc<3)
    d=1.0;
  4c:	dd 5d e0             	fstpl  -0x20(%ebp)
main(int argc,char *argv[])
{
  int k,n,id;
  double x=0,z,d;
  if(argc < 2)
    n=1;               //default value
  4f:	31 db                	xor    %ebx,%ebx
  51:	eb 24                	jmp    77 <main+0x77>
  53:	90                   	nop
  54:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  for(k=0;k<n;k++)
  {
   id=fork();
   if(id<0){
     printf(1,"%d failed in fork!\n",getpid());
    }else if(id>0){//parent
  58:	74 7f                	je     d9 <main+0xd9>
     printf(1,"Parent %d creating child %d\n",getpid(),id);
  5a:	e8 83 03 00 00       	call   3e2 <getpid>
  5f:	56                   	push   %esi
  60:	50                   	push   %eax
  else
    d=atoi(argv[2]);

  x=0;
  id=0;
  for(k=0;k<n;k++)
  61:	83 c3 01             	add    $0x1,%ebx
  {
   id=fork();
   if(id<0){
     printf(1,"%d failed in fork!\n",getpid());
    }else if(id>0){//parent
     printf(1,"Parent %d creating child %d\n",getpid(),id);
  64:	68 04 08 00 00       	push   $0x804
  69:	6a 01                	push   $0x1
  6b:	e8 60 04 00 00       	call   4d0 <printf>
  70:	83 c4 10             	add    $0x10,%esp
  else
    d=atoi(argv[2]);

  x=0;
  id=0;
  for(k=0;k<n;k++)
  73:	39 fb                	cmp    %edi,%ebx
  75:	7d 31                	jge    a8 <main+0xa8>
  {
   id=fork();
  77:	e8 de 02 00 00       	call   35a <fork>
   if(id<0){
  7c:	85 c0                	test   %eax,%eax

  x=0;
  id=0;
  for(k=0;k<n;k++)
  {
   id=fork();
  7e:	89 c6                	mov    %eax,%esi
   if(id<0){
  80:	79 d6                	jns    58 <main+0x58>
     printf(1,"%d failed in fork!\n",getpid());
  82:	e8 5b 03 00 00       	call   3e2 <getpid>
  87:	83 ec 04             	sub    $0x4,%esp
  else
    d=atoi(argv[2]);

  x=0;
  id=0;
  for(k=0;k<n;k++)
  8a:	83 c3 01             	add    $0x1,%ebx
  {
   id=fork();
   if(id<0){
     printf(1,"%d failed in fork!\n",getpid());
  8d:	50                   	push   %eax
  8e:	68 f0 07 00 00       	push   $0x7f0
  93:	6a 01                	push   $0x1
  95:	e8 36 04 00 00       	call   4d0 <printf>
  9a:	83 c4 10             	add    $0x10,%esp
  else
    d=atoi(argv[2]);

  x=0;
  id=0;
  for(k=0;k<n;k++)
  9d:	39 fb                	cmp    %edi,%ebx
  9f:	7c d6                	jl     77 <main+0x77>
  a1:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
     for(z=0;z<2147483647.0;z+=d)
       x=x+10.4*10; //useless calculations to consume CPU time
     break;
    }
  }
  exit();
  a8:	e8 b5 02 00 00       	call   362 <exit>
    n=2;

  if(argc<3)
    d=1.0;
  else
    d=atoi(argv[2]);
  ad:	83 ec 0c             	sub    $0xc,%esp
  b0:	ff 76 08             	pushl  0x8(%esi)
  b3:	e8 38 02 00 00       	call   2f0 <atoi>
  b8:	89 45 e0             	mov    %eax,-0x20(%ebp)
  bb:	83 c4 10             	add    $0x10,%esp
  be:	db 45 e0             	fildl  -0x20(%ebp)
  c1:	dd 5d e0             	fstpl  -0x20(%ebp)

  x=0;
  id=0;
  for(k=0;k<n;k++)
  c4:	85 ff                	test   %edi,%edi
  c6:	75 87                	jne    4f <main+0x4f>
  c8:	eb de                	jmp    a8 <main+0xa8>
    n=atoi(argv[1]); //from command line
  if(n<0||n>20)
    n=2;

  if(argc<3)
    d=1.0;
  ca:	d9 e8                	fld1   
main(int argc,char *argv[])
{
  int k,n,id;
  double x=0,z,d;
  if(argc < 2)
    n=1;               //default value
  cc:	bf 01 00 00 00       	mov    $0x1,%edi
    n=atoi(argv[1]); //from command line
  if(n<0||n>20)
    n=2;

  if(argc<3)
    d=1.0;
  d1:	dd 5d e0             	fstpl  -0x20(%ebp)
  d4:	e9 76 ff ff ff       	jmp    4f <main+0x4f>
   if(id<0){
     printf(1,"%d failed in fork!\n",getpid());
    }else if(id>0){//parent
     printf(1,"Parent %d creating child %d\n",getpid(),id);
    }else{//child
     printf(1,"Child %d created\n",getpid());
  d9:	e8 04 03 00 00       	call   3e2 <getpid>
  de:	52                   	push   %edx
  df:	50                   	push   %eax
  e0:	68 21 08 00 00       	push   $0x821
  e5:	6a 01                	push   $0x1
  e7:	e8 e4 03 00 00       	call   4d0 <printf>
     for(z=0;z<2147483647.0;z+=d)
  ec:	d9 ee                	fldz   
   if(id<0){
     printf(1,"%d failed in fork!\n",getpid());
    }else if(id>0){//parent
     printf(1,"Parent %d creating child %d\n",getpid(),id);
    }else{//child
     printf(1,"Child %d created\n",getpid());
  ee:	83 c4 10             	add    $0x10,%esp
     for(z=0;z<2147483647.0;z+=d)
  f1:	dd 05 38 08 00 00    	fldl   0x838
  f7:	d9 c9                	fxch   %st(1)
  f9:	eb 07                	jmp    102 <main+0x102>
  fb:	90                   	nop
  fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 100:	d9 c9                	fxch   %st(1)
 102:	dc 45 e0             	faddl  -0x20(%ebp)
 105:	d9 c9                	fxch   %st(1)
 107:	db e9                	fucomi %st(1),%st
 109:	77 f5                	ja     100 <main+0x100>
 10b:	dd d8                	fstp   %st(0)
 10d:	dd d8                	fstp   %st(0)
 10f:	eb 97                	jmp    a8 <main+0xa8>
  else
    n=atoi(argv[1]); //from command line
  if(n<0||n>20)
    n=2;

  if(argc<3)
 111:	83 fb 02             	cmp    $0x2,%ebx
 114:	75 97                	jne    ad <main+0xad>
    d=1.0;
 116:	d9 e8                	fld1   
 118:	dd 5d e0             	fstpl  -0x20(%ebp)
 11b:	eb a7                	jmp    c4 <main+0xc4>
 11d:	66 90                	xchg   %ax,%ax
 11f:	90                   	nop

00000120 <strcpy>:
 120:	55                   	push   %ebp
 121:	89 e5                	mov    %esp,%ebp
 123:	53                   	push   %ebx
 124:	8b 45 08             	mov    0x8(%ebp),%eax
 127:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 12a:	89 c2                	mov    %eax,%edx
 12c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 130:	83 c1 01             	add    $0x1,%ecx
 133:	0f b6 59 ff          	movzbl -0x1(%ecx),%ebx
 137:	83 c2 01             	add    $0x1,%edx
 13a:	84 db                	test   %bl,%bl
 13c:	88 5a ff             	mov    %bl,-0x1(%edx)
 13f:	75 ef                	jne    130 <strcpy+0x10>
 141:	5b                   	pop    %ebx
 142:	5d                   	pop    %ebp
 143:	c3                   	ret    
 144:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 14a:	8d bf 00 00 00 00    	lea    0x0(%edi),%edi

00000150 <strcmp>:
 150:	55                   	push   %ebp
 151:	89 e5                	mov    %esp,%ebp
 153:	56                   	push   %esi
 154:	53                   	push   %ebx
 155:	8b 55 08             	mov    0x8(%ebp),%edx
 158:	8b 4d 0c             	mov    0xc(%ebp),%ecx
 15b:	0f b6 02             	movzbl (%edx),%eax
 15e:	0f b6 19             	movzbl (%ecx),%ebx
 161:	84 c0                	test   %al,%al
 163:	75 1e                	jne    183 <strcmp+0x33>
 165:	eb 29                	jmp    190 <strcmp+0x40>
 167:	89 f6                	mov    %esi,%esi
 169:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 170:	83 c2 01             	add    $0x1,%edx
 173:	0f b6 02             	movzbl (%edx),%eax
 176:	8d 71 01             	lea    0x1(%ecx),%esi
 179:	0f b6 59 01          	movzbl 0x1(%ecx),%ebx
 17d:	84 c0                	test   %al,%al
 17f:	74 0f                	je     190 <strcmp+0x40>
 181:	89 f1                	mov    %esi,%ecx
 183:	38 d8                	cmp    %bl,%al
 185:	74 e9                	je     170 <strcmp+0x20>
 187:	29 d8                	sub    %ebx,%eax
 189:	5b                   	pop    %ebx
 18a:	5e                   	pop    %esi
 18b:	5d                   	pop    %ebp
 18c:	c3                   	ret    
 18d:	8d 76 00             	lea    0x0(%esi),%esi
 190:	31 c0                	xor    %eax,%eax
 192:	29 d8                	sub    %ebx,%eax
 194:	5b                   	pop    %ebx
 195:	5e                   	pop    %esi
 196:	5d                   	pop    %ebp
 197:	c3                   	ret    
 198:	90                   	nop
 199:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

000001a0 <strlen>:
 1a0:	55                   	push   %ebp
 1a1:	89 e5                	mov    %esp,%ebp
 1a3:	8b 4d 08             	mov    0x8(%ebp),%ecx
 1a6:	80 39 00             	cmpb   $0x0,(%ecx)
 1a9:	74 12                	je     1bd <strlen+0x1d>
 1ab:	31 d2                	xor    %edx,%edx
 1ad:	8d 76 00             	lea    0x0(%esi),%esi
 1b0:	83 c2 01             	add    $0x1,%edx
 1b3:	80 3c 11 00          	cmpb   $0x0,(%ecx,%edx,1)
 1b7:	89 d0                	mov    %edx,%eax
 1b9:	75 f5                	jne    1b0 <strlen+0x10>
 1bb:	5d                   	pop    %ebp
 1bc:	c3                   	ret    
 1bd:	31 c0                	xor    %eax,%eax
 1bf:	5d                   	pop    %ebp
 1c0:	c3                   	ret    
 1c1:	eb 0d                	jmp    1d0 <memset>
 1c3:	90                   	nop
 1c4:	90                   	nop
 1c5:	90                   	nop
 1c6:	90                   	nop
 1c7:	90                   	nop
 1c8:	90                   	nop
 1c9:	90                   	nop
 1ca:	90                   	nop
 1cb:	90                   	nop
 1cc:	90                   	nop
 1cd:	90                   	nop
 1ce:	90                   	nop
 1cf:	90                   	nop

000001d0 <memset>:
 1d0:	55                   	push   %ebp
 1d1:	89 e5                	mov    %esp,%ebp
 1d3:	57                   	push   %edi
 1d4:	8b 55 08             	mov    0x8(%ebp),%edx
 1d7:	8b 4d 10             	mov    0x10(%ebp),%ecx
 1da:	8b 45 0c             	mov    0xc(%ebp),%eax
 1dd:	89 d7                	mov    %edx,%edi
 1df:	fc                   	cld    
 1e0:	f3 aa                	rep stos %al,%es:(%edi)
 1e2:	89 d0                	mov    %edx,%eax
 1e4:	5f                   	pop    %edi
 1e5:	5d                   	pop    %ebp
 1e6:	c3                   	ret    
 1e7:	89 f6                	mov    %esi,%esi
 1e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000001f0 <strchr>:
 1f0:	55                   	push   %ebp
 1f1:	89 e5                	mov    %esp,%ebp
 1f3:	53                   	push   %ebx
 1f4:	8b 45 08             	mov    0x8(%ebp),%eax
 1f7:	8b 5d 0c             	mov    0xc(%ebp),%ebx
 1fa:	0f b6 10             	movzbl (%eax),%edx
 1fd:	84 d2                	test   %dl,%dl
 1ff:	74 1d                	je     21e <strchr+0x2e>
 201:	38 d3                	cmp    %dl,%bl
 203:	89 d9                	mov    %ebx,%ecx
 205:	75 0d                	jne    214 <strchr+0x24>
 207:	eb 17                	jmp    220 <strchr+0x30>
 209:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
 210:	38 ca                	cmp    %cl,%dl
 212:	74 0c                	je     220 <strchr+0x30>
 214:	83 c0 01             	add    $0x1,%eax
 217:	0f b6 10             	movzbl (%eax),%edx
 21a:	84 d2                	test   %dl,%dl
 21c:	75 f2                	jne    210 <strchr+0x20>
 21e:	31 c0                	xor    %eax,%eax
 220:	5b                   	pop    %ebx
 221:	5d                   	pop    %ebp
 222:	c3                   	ret    
 223:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
 229:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

00000230 <gets>:
 230:	55                   	push   %ebp
 231:	89 e5                	mov    %esp,%ebp
 233:	57                   	push   %edi
 234:	56                   	push   %esi
 235:	53                   	push   %ebx
 236:	31 f6                	xor    %esi,%esi
 238:	8d 7d e7             	lea    -0x19(%ebp),%edi
 23b:	83 ec 1c             	sub    $0x1c,%esp
 23e:	eb 29                	jmp    269 <gets+0x39>
 240:	83 ec 04             	sub    $0x4,%esp
 243:	6a 01                	push   $0x1
 245:	57                   	push   %edi
 246:	6a 00                	push   $0x0
 248:	e8 2d 01 00 00       	call   37a <read>
 24d:	83 c4 10             	add    $0x10,%esp
 250:	85 c0                	test   %eax,%eax
 252:	7e 1d                	jle    271 <gets+0x41>
 254:	0f b6 45 e7          	movzbl -0x19(%ebp),%eax
 258:	8b 55 08             	mov    0x8(%ebp),%edx
 25b:	89 de                	mov    %ebx,%esi
 25d:	3c 0a                	cmp    $0xa,%al
 25f:	88 44 1a ff          	mov    %al,-0x1(%edx,%ebx,1)
 263:	74 1b                	je     280 <gets+0x50>
 265:	3c 0d                	cmp    $0xd,%al
 267:	74 17                	je     280 <gets+0x50>
 269:	8d 5e 01             	lea    0x1(%esi),%ebx
 26c:	3b 5d 0c             	cmp    0xc(%ebp),%ebx
 26f:	7c cf                	jl     240 <gets+0x10>
 271:	8b 45 08             	mov    0x8(%ebp),%eax
 274:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 278:	8d 65 f4             	lea    -0xc(%ebp),%esp
 27b:	5b                   	pop    %ebx
 27c:	5e                   	pop    %esi
 27d:	5f                   	pop    %edi
 27e:	5d                   	pop    %ebp
 27f:	c3                   	ret    
 280:	8b 45 08             	mov    0x8(%ebp),%eax
 283:	89 de                	mov    %ebx,%esi
 285:	c6 04 30 00          	movb   $0x0,(%eax,%esi,1)
 289:	8d 65 f4             	lea    -0xc(%ebp),%esp
 28c:	5b                   	pop    %ebx
 28d:	5e                   	pop    %esi
 28e:	5f                   	pop    %edi
 28f:	5d                   	pop    %ebp
 290:	c3                   	ret    
 291:	eb 0d                	jmp    2a0 <stat>
 293:	90                   	nop
 294:	90                   	nop
 295:	90                   	nop
 296:	90                   	nop
 297:	90                   	nop
 298:	90                   	nop
 299:	90                   	nop
 29a:	90                   	nop
 29b:	90                   	nop
 29c:	90                   	nop
 29d:	90                   	nop
 29e:	90                   	nop
 29f:	90                   	nop

000002a0 <stat>:
 2a0:	55                   	push   %ebp
 2a1:	89 e5                	mov    %esp,%ebp
 2a3:	56                   	push   %esi
 2a4:	53                   	push   %ebx
 2a5:	83 ec 08             	sub    $0x8,%esp
 2a8:	6a 00                	push   $0x0
 2aa:	ff 75 08             	pushl  0x8(%ebp)
 2ad:	e8 f0 00 00 00       	call   3a2 <open>
 2b2:	83 c4 10             	add    $0x10,%esp
 2b5:	85 c0                	test   %eax,%eax
 2b7:	78 27                	js     2e0 <stat+0x40>
 2b9:	83 ec 08             	sub    $0x8,%esp
 2bc:	ff 75 0c             	pushl  0xc(%ebp)
 2bf:	89 c3                	mov    %eax,%ebx
 2c1:	50                   	push   %eax
 2c2:	e8 f3 00 00 00       	call   3ba <fstat>
 2c7:	89 c6                	mov    %eax,%esi
 2c9:	89 1c 24             	mov    %ebx,(%esp)
 2cc:	e8 b9 00 00 00       	call   38a <close>
 2d1:	83 c4 10             	add    $0x10,%esp
 2d4:	89 f0                	mov    %esi,%eax
 2d6:	8d 65 f8             	lea    -0x8(%ebp),%esp
 2d9:	5b                   	pop    %ebx
 2da:	5e                   	pop    %esi
 2db:	5d                   	pop    %ebp
 2dc:	c3                   	ret    
 2dd:	8d 76 00             	lea    0x0(%esi),%esi
 2e0:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
 2e5:	eb ef                	jmp    2d6 <stat+0x36>
 2e7:	89 f6                	mov    %esi,%esi
 2e9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi

000002f0 <atoi>:
 2f0:	55                   	push   %ebp
 2f1:	89 e5                	mov    %esp,%ebp
 2f3:	53                   	push   %ebx
 2f4:	8b 4d 08             	mov    0x8(%ebp),%ecx
 2f7:	0f be 11             	movsbl (%ecx),%edx
 2fa:	8d 42 d0             	lea    -0x30(%edx),%eax
 2fd:	3c 09                	cmp    $0x9,%al
 2ff:	b8 00 00 00 00       	mov    $0x0,%eax
 304:	77 1f                	ja     325 <atoi+0x35>
 306:	8d 76 00             	lea    0x0(%esi),%esi
 309:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 310:	8d 04 80             	lea    (%eax,%eax,4),%eax
 313:	83 c1 01             	add    $0x1,%ecx
 316:	8d 44 42 d0          	lea    -0x30(%edx,%eax,2),%eax
 31a:	0f be 11             	movsbl (%ecx),%edx
 31d:	8d 5a d0             	lea    -0x30(%edx),%ebx
 320:	80 fb 09             	cmp    $0x9,%bl
 323:	76 eb                	jbe    310 <atoi+0x20>
 325:	5b                   	pop    %ebx
 326:	5d                   	pop    %ebp
 327:	c3                   	ret    
 328:	90                   	nop
 329:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi

00000330 <memmove>:
 330:	55                   	push   %ebp
 331:	89 e5                	mov    %esp,%ebp
 333:	56                   	push   %esi
 334:	53                   	push   %ebx
 335:	8b 5d 10             	mov    0x10(%ebp),%ebx
 338:	8b 45 08             	mov    0x8(%ebp),%eax
 33b:	8b 75 0c             	mov    0xc(%ebp),%esi
 33e:	85 db                	test   %ebx,%ebx
 340:	7e 14                	jle    356 <memmove+0x26>
 342:	31 d2                	xor    %edx,%edx
 344:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 348:	0f b6 0c 16          	movzbl (%esi,%edx,1),%ecx
 34c:	88 0c 10             	mov    %cl,(%eax,%edx,1)
 34f:	83 c2 01             	add    $0x1,%edx
 352:	39 da                	cmp    %ebx,%edx
 354:	75 f2                	jne    348 <memmove+0x18>
 356:	5b                   	pop    %ebx
 357:	5e                   	pop    %esi
 358:	5d                   	pop    %ebp
 359:	c3                   	ret    

0000035a <fork>:
  name: \
    movl $SYS_ ## name, %eax; \
    int $T_SYSCALL; \
    ret

SYSCALL(fork)
 35a:	b8 01 00 00 00       	mov    $0x1,%eax
 35f:	cd 40                	int    $0x40
 361:	c3                   	ret    

00000362 <exit>:
SYSCALL(exit)
 362:	b8 02 00 00 00       	mov    $0x2,%eax
 367:	cd 40                	int    $0x40
 369:	c3                   	ret    

0000036a <wait>:
SYSCALL(wait)
 36a:	b8 03 00 00 00       	mov    $0x3,%eax
 36f:	cd 40                	int    $0x40
 371:	c3                   	ret    

00000372 <pipe>:
SYSCALL(pipe)
 372:	b8 04 00 00 00       	mov    $0x4,%eax
 377:	cd 40                	int    $0x40
 379:	c3                   	ret    

0000037a <read>:
SYSCALL(read)
 37a:	b8 05 00 00 00       	mov    $0x5,%eax
 37f:	cd 40                	int    $0x40
 381:	c3                   	ret    

00000382 <write>:
SYSCALL(write)
 382:	b8 10 00 00 00       	mov    $0x10,%eax
 387:	cd 40                	int    $0x40
 389:	c3                   	ret    

0000038a <close>:
SYSCALL(close)
 38a:	b8 15 00 00 00       	mov    $0x15,%eax
 38f:	cd 40                	int    $0x40
 391:	c3                   	ret    

00000392 <kill>:
SYSCALL(kill)
 392:	b8 06 00 00 00       	mov    $0x6,%eax
 397:	cd 40                	int    $0x40
 399:	c3                   	ret    

0000039a <exec>:
SYSCALL(exec)
 39a:	b8 07 00 00 00       	mov    $0x7,%eax
 39f:	cd 40                	int    $0x40
 3a1:	c3                   	ret    

000003a2 <open>:
SYSCALL(open)
 3a2:	b8 0f 00 00 00       	mov    $0xf,%eax
 3a7:	cd 40                	int    $0x40
 3a9:	c3                   	ret    

000003aa <mknod>:
SYSCALL(mknod)
 3aa:	b8 11 00 00 00       	mov    $0x11,%eax
 3af:	cd 40                	int    $0x40
 3b1:	c3                   	ret    

000003b2 <unlink>:
SYSCALL(unlink)
 3b2:	b8 12 00 00 00       	mov    $0x12,%eax
 3b7:	cd 40                	int    $0x40
 3b9:	c3                   	ret    

000003ba <fstat>:
SYSCALL(fstat)
 3ba:	b8 08 00 00 00       	mov    $0x8,%eax
 3bf:	cd 40                	int    $0x40
 3c1:	c3                   	ret    

000003c2 <link>:
SYSCALL(link)
 3c2:	b8 13 00 00 00       	mov    $0x13,%eax
 3c7:	cd 40                	int    $0x40
 3c9:	c3                   	ret    

000003ca <mkdir>:
SYSCALL(mkdir)
 3ca:	b8 14 00 00 00       	mov    $0x14,%eax
 3cf:	cd 40                	int    $0x40
 3d1:	c3                   	ret    

000003d2 <chdir>:
SYSCALL(chdir)
 3d2:	b8 09 00 00 00       	mov    $0x9,%eax
 3d7:	cd 40                	int    $0x40
 3d9:	c3                   	ret    

000003da <dup>:
SYSCALL(dup)
 3da:	b8 0a 00 00 00       	mov    $0xa,%eax
 3df:	cd 40                	int    $0x40
 3e1:	c3                   	ret    

000003e2 <getpid>:
SYSCALL(getpid)
 3e2:	b8 0b 00 00 00       	mov    $0xb,%eax
 3e7:	cd 40                	int    $0x40
 3e9:	c3                   	ret    

000003ea <sbrk>:
SYSCALL(sbrk)
 3ea:	b8 0c 00 00 00       	mov    $0xc,%eax
 3ef:	cd 40                	int    $0x40
 3f1:	c3                   	ret    

000003f2 <sleep>:
SYSCALL(sleep)
 3f2:	b8 0d 00 00 00       	mov    $0xd,%eax
 3f7:	cd 40                	int    $0x40
 3f9:	c3                   	ret    

000003fa <uptime>:
SYSCALL(uptime)
 3fa:	b8 0e 00 00 00       	mov    $0xe,%eax
 3ff:	cd 40                	int    $0x40
 401:	c3                   	ret    

00000402 <lsproc>:
SYSCALL(lsproc)
 402:	b8 16 00 00 00       	mov    $0x16,%eax
 407:	cd 40                	int    $0x40
 409:	c3                   	ret    

0000040a <suspend>:
SYSCALL(suspend)
 40a:	b8 17 00 00 00       	mov    $0x17,%eax
 40f:	cd 40                	int    $0x40
 411:	c3                   	ret    

00000412 <pmwakeup>:
SYSCALL(pmwakeup)
 412:	b8 18 00 00 00       	mov    $0x18,%eax
 417:	cd 40                	int    $0x40
 419:	c3                   	ret    

0000041a <halt>:
SYSCALL(halt)
 41a:	b8 19 00 00 00       	mov    $0x19,%eax
 41f:	cd 40                	int    $0x40
 421:	c3                   	ret    
 422:	66 90                	xchg   %ax,%ax
 424:	66 90                	xchg   %ax,%ax
 426:	66 90                	xchg   %ax,%ax
 428:	66 90                	xchg   %ax,%ax
 42a:	66 90                	xchg   %ax,%ax
 42c:	66 90                	xchg   %ax,%ax
 42e:	66 90                	xchg   %ax,%ax

00000430 <printint>:
  write(fd, &c, 1);
}

static void
printint(int fd, int xx, int base, int sgn)
{
 430:	55                   	push   %ebp
 431:	89 e5                	mov    %esp,%ebp
 433:	57                   	push   %edi
 434:	56                   	push   %esi
 435:	53                   	push   %ebx
 436:	89 c6                	mov    %eax,%esi
 438:	83 ec 3c             	sub    $0x3c,%esp
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
 43b:	8b 5d 08             	mov    0x8(%ebp),%ebx
 43e:	85 db                	test   %ebx,%ebx
 440:	74 7e                	je     4c0 <printint+0x90>
 442:	89 d0                	mov    %edx,%eax
 444:	c1 e8 1f             	shr    $0x1f,%eax
 447:	84 c0                	test   %al,%al
 449:	74 75                	je     4c0 <printint+0x90>
    neg = 1;
    x = -xx;
 44b:	89 d0                	mov    %edx,%eax
  int i, neg;
  uint x;

  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
 44d:	c7 45 c4 01 00 00 00 	movl   $0x1,-0x3c(%ebp)
    x = -xx;
 454:	f7 d8                	neg    %eax
 456:	89 75 c0             	mov    %esi,-0x40(%ebp)
  } else {
    x = xx;
  }

  i = 0;
 459:	31 ff                	xor    %edi,%edi
 45b:	8d 5d d7             	lea    -0x29(%ebp),%ebx
 45e:	89 ce                	mov    %ecx,%esi
 460:	eb 08                	jmp    46a <printint+0x3a>
 462:	8d b6 00 00 00 00    	lea    0x0(%esi),%esi
  do{
    buf[i++] = digits[x % base];
 468:	89 cf                	mov    %ecx,%edi
 46a:	31 d2                	xor    %edx,%edx
 46c:	8d 4f 01             	lea    0x1(%edi),%ecx
 46f:	f7 f6                	div    %esi
 471:	0f b6 92 48 08 00 00 	movzbl 0x848(%edx),%edx
  }while((x /= base) != 0);
 478:	85 c0                	test   %eax,%eax
    x = xx;
  }

  i = 0;
  do{
    buf[i++] = digits[x % base];
 47a:	88 14 0b             	mov    %dl,(%ebx,%ecx,1)
  }while((x /= base) != 0);
 47d:	75 e9                	jne    468 <printint+0x38>
  if(neg)
 47f:	8b 45 c4             	mov    -0x3c(%ebp),%eax
 482:	8b 75 c0             	mov    -0x40(%ebp),%esi
 485:	85 c0                	test   %eax,%eax
 487:	74 08                	je     491 <printint+0x61>
    buf[i++] = '-';
 489:	c6 44 0d d8 2d       	movb   $0x2d,-0x28(%ebp,%ecx,1)
 48e:	8d 4f 02             	lea    0x2(%edi),%ecx
 491:	8d 7c 0d d7          	lea    -0x29(%ebp,%ecx,1),%edi
 495:	8d 76 00             	lea    0x0(%esi),%esi
 498:	0f b6 07             	movzbl (%edi),%eax
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 49b:	83 ec 04             	sub    $0x4,%esp
 49e:	83 ef 01             	sub    $0x1,%edi
 4a1:	6a 01                	push   $0x1
 4a3:	53                   	push   %ebx
 4a4:	56                   	push   %esi
 4a5:	88 45 d7             	mov    %al,-0x29(%ebp)
 4a8:	e8 d5 fe ff ff       	call   382 <write>
    buf[i++] = digits[x % base];
  }while((x /= base) != 0);
  if(neg)
    buf[i++] = '-';

  while(--i >= 0)
 4ad:	83 c4 10             	add    $0x10,%esp
 4b0:	39 df                	cmp    %ebx,%edi
 4b2:	75 e4                	jne    498 <printint+0x68>
    putc(fd, buf[i]);
}
 4b4:	8d 65 f4             	lea    -0xc(%ebp),%esp
 4b7:	5b                   	pop    %ebx
 4b8:	5e                   	pop    %esi
 4b9:	5f                   	pop    %edi
 4ba:	5d                   	pop    %ebp
 4bb:	c3                   	ret    
 4bc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
  neg = 0;
  if(sgn && xx < 0){
    neg = 1;
    x = -xx;
  } else {
    x = xx;
 4c0:	89 d0                	mov    %edx,%eax
  static char digits[] = "0123456789ABCDEF";
  char buf[16];
  int i, neg;
  uint x;

  neg = 0;
 4c2:	c7 45 c4 00 00 00 00 	movl   $0x0,-0x3c(%ebp)
 4c9:	eb 8b                	jmp    456 <printint+0x26>
 4cb:	90                   	nop
 4cc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi

000004d0 <printf>:
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4d0:	55                   	push   %ebp
 4d1:	89 e5                	mov    %esp,%ebp
 4d3:	57                   	push   %edi
 4d4:	56                   	push   %esi
 4d5:	53                   	push   %ebx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4d6:	8d 45 10             	lea    0x10(%ebp),%eax
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4d9:	83 ec 2c             	sub    $0x2c,%esp
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4dc:	8b 75 0c             	mov    0xc(%ebp),%esi
}

// Print to the given fd. Only understands %d, %x, %p, %s.
void
printf(int fd, char *fmt, ...)
{
 4df:	8b 7d 08             	mov    0x8(%ebp),%edi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 4e2:	89 45 d0             	mov    %eax,-0x30(%ebp)
 4e5:	0f b6 1e             	movzbl (%esi),%ebx
 4e8:	83 c6 01             	add    $0x1,%esi
 4eb:	84 db                	test   %bl,%bl
 4ed:	0f 84 b0 00 00 00    	je     5a3 <printf+0xd3>
 4f3:	31 d2                	xor    %edx,%edx
 4f5:	eb 39                	jmp    530 <printf+0x60>
 4f7:	89 f6                	mov    %esi,%esi
 4f9:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 500:	83 f8 25             	cmp    $0x25,%eax
 503:	89 55 d4             	mov    %edx,-0x2c(%ebp)
        state = '%';
 506:	ba 25 00 00 00       	mov    $0x25,%edx
  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
    if(state == 0){
      if(c == '%'){
 50b:	74 18                	je     525 <printf+0x55>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 50d:	8d 45 e2             	lea    -0x1e(%ebp),%eax
 510:	83 ec 04             	sub    $0x4,%esp
 513:	88 5d e2             	mov    %bl,-0x1e(%ebp)
 516:	6a 01                	push   $0x1
 518:	50                   	push   %eax
 519:	57                   	push   %edi
 51a:	e8 63 fe ff ff       	call   382 <write>
 51f:	8b 55 d4             	mov    -0x2c(%ebp),%edx
 522:	83 c4 10             	add    $0x10,%esp
 525:	83 c6 01             	add    $0x1,%esi
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 528:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
 52c:	84 db                	test   %bl,%bl
 52e:	74 73                	je     5a3 <printf+0xd3>
    c = fmt[i] & 0xff;
    if(state == 0){
 530:	85 d2                	test   %edx,%edx
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
    c = fmt[i] & 0xff;
 532:	0f be cb             	movsbl %bl,%ecx
 535:	0f b6 c3             	movzbl %bl,%eax
    if(state == 0){
 538:	74 c6                	je     500 <printf+0x30>
      if(c == '%'){
        state = '%';
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
 53a:	83 fa 25             	cmp    $0x25,%edx
 53d:	75 e6                	jne    525 <printf+0x55>
      if(c == 'd'){
 53f:	83 f8 64             	cmp    $0x64,%eax
 542:	0f 84 f8 00 00 00    	je     640 <printf+0x170>
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
 548:	81 e1 f7 00 00 00    	and    $0xf7,%ecx
 54e:	83 f9 70             	cmp    $0x70,%ecx
 551:	74 5d                	je     5b0 <printf+0xe0>
        printint(fd, *ap, 16, 0);
        ap++;
      } else if(c == 's'){
 553:	83 f8 73             	cmp    $0x73,%eax
 556:	0f 84 84 00 00 00    	je     5e0 <printf+0x110>
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
        }
      } else if(c == 'c'){
 55c:	83 f8 63             	cmp    $0x63,%eax
 55f:	0f 84 ea 00 00 00    	je     64f <printf+0x17f>
        putc(fd, *ap);
        ap++;
      } else if(c == '%'){
 565:	83 f8 25             	cmp    $0x25,%eax
 568:	0f 84 c2 00 00 00    	je     630 <printf+0x160>
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 56e:	8d 45 e7             	lea    -0x19(%ebp),%eax
 571:	83 ec 04             	sub    $0x4,%esp
 574:	c6 45 e7 25          	movb   $0x25,-0x19(%ebp)
 578:	6a 01                	push   $0x1
 57a:	50                   	push   %eax
 57b:	57                   	push   %edi
 57c:	e8 01 fe ff ff       	call   382 <write>
 581:	83 c4 0c             	add    $0xc,%esp
 584:	8d 45 e6             	lea    -0x1a(%ebp),%eax
 587:	88 5d e6             	mov    %bl,-0x1a(%ebp)
 58a:	6a 01                	push   $0x1
 58c:	50                   	push   %eax
 58d:	57                   	push   %edi
 58e:	83 c6 01             	add    $0x1,%esi
 591:	e8 ec fd ff ff       	call   382 <write>
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 596:	0f b6 5e ff          	movzbl -0x1(%esi),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 59a:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 59d:	31 d2                	xor    %edx,%edx
  int c, i, state;
  uint *ap;

  state = 0;
  ap = (uint*)(void*)&fmt + 1;
  for(i = 0; fmt[i]; i++){
 59f:	84 db                	test   %bl,%bl
 5a1:	75 8d                	jne    530 <printf+0x60>
        putc(fd, c);
      }
      state = 0;
    }
  }
}
 5a3:	8d 65 f4             	lea    -0xc(%ebp),%esp
 5a6:	5b                   	pop    %ebx
 5a7:	5e                   	pop    %esi
 5a8:	5f                   	pop    %edi
 5a9:	5d                   	pop    %ebp
 5aa:	c3                   	ret    
 5ab:	90                   	nop
 5ac:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
 5b0:	83 ec 0c             	sub    $0xc,%esp
 5b3:	b9 10 00 00 00       	mov    $0x10,%ecx
 5b8:	6a 00                	push   $0x0
 5ba:	8b 5d d0             	mov    -0x30(%ebp),%ebx
 5bd:	89 f8                	mov    %edi,%eax
 5bf:	8b 13                	mov    (%ebx),%edx
 5c1:	e8 6a fe ff ff       	call   430 <printint>
        ap++;
 5c6:	89 d8                	mov    %ebx,%eax
 5c8:	83 c4 10             	add    $0x10,%esp
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 5cb:	31 d2                	xor    %edx,%edx
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
        ap++;
      } else if(c == 'x' || c == 'p'){
        printint(fd, *ap, 16, 0);
        ap++;
 5cd:	83 c0 04             	add    $0x4,%eax
 5d0:	89 45 d0             	mov    %eax,-0x30(%ebp)
 5d3:	e9 4d ff ff ff       	jmp    525 <printf+0x55>
 5d8:	90                   	nop
 5d9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      } else if(c == 's'){
        s = (char*)*ap;
 5e0:	8b 45 d0             	mov    -0x30(%ebp),%eax
 5e3:	8b 18                	mov    (%eax),%ebx
        ap++;
 5e5:	83 c0 04             	add    $0x4,%eax
 5e8:	89 45 d0             	mov    %eax,-0x30(%ebp)
        if(s == 0)
          s = "(null)";
 5eb:	b8 40 08 00 00       	mov    $0x840,%eax
 5f0:	85 db                	test   %ebx,%ebx
 5f2:	0f 44 d8             	cmove  %eax,%ebx
        while(*s != 0){
 5f5:	0f b6 03             	movzbl (%ebx),%eax
 5f8:	84 c0                	test   %al,%al
 5fa:	74 23                	je     61f <printf+0x14f>
 5fc:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
 600:	88 45 e3             	mov    %al,-0x1d(%ebp)
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 603:	8d 45 e3             	lea    -0x1d(%ebp),%eax
 606:	83 ec 04             	sub    $0x4,%esp
 609:	6a 01                	push   $0x1
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
          putc(fd, *s);
          s++;
 60b:	83 c3 01             	add    $0x1,%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 60e:	50                   	push   %eax
 60f:	57                   	push   %edi
 610:	e8 6d fd ff ff       	call   382 <write>
      } else if(c == 's'){
        s = (char*)*ap;
        ap++;
        if(s == 0)
          s = "(null)";
        while(*s != 0){
 615:	0f b6 03             	movzbl (%ebx),%eax
 618:	83 c4 10             	add    $0x10,%esp
 61b:	84 c0                	test   %al,%al
 61d:	75 e1                	jne    600 <printf+0x130>
      } else {
        // Unknown % sequence.  Print it to draw attention.
        putc(fd, '%');
        putc(fd, c);
      }
      state = 0;
 61f:	31 d2                	xor    %edx,%edx
 621:	e9 ff fe ff ff       	jmp    525 <printf+0x55>
 626:	8d 76 00             	lea    0x0(%esi),%esi
 629:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 630:	83 ec 04             	sub    $0x4,%esp
 633:	88 5d e5             	mov    %bl,-0x1b(%ebp)
 636:	8d 45 e5             	lea    -0x1b(%ebp),%eax
 639:	6a 01                	push   $0x1
 63b:	e9 4c ff ff ff       	jmp    58c <printf+0xbc>
      } else {
        putc(fd, c);
      }
    } else if(state == '%'){
      if(c == 'd'){
        printint(fd, *ap, 10, 1);
 640:	83 ec 0c             	sub    $0xc,%esp
 643:	b9 0a 00 00 00       	mov    $0xa,%ecx
 648:	6a 01                	push   $0x1
 64a:	e9 6b ff ff ff       	jmp    5ba <printf+0xea>
 64f:	8b 5d d0             	mov    -0x30(%ebp),%ebx
#include "user.h"

static void
putc(int fd, char c)
{
  write(fd, &c, 1);
 652:	83 ec 04             	sub    $0x4,%esp
 655:	8b 03                	mov    (%ebx),%eax
 657:	6a 01                	push   $0x1
 659:	88 45 e4             	mov    %al,-0x1c(%ebp)
 65c:	8d 45 e4             	lea    -0x1c(%ebp),%eax
 65f:	50                   	push   %eax
 660:	57                   	push   %edi
 661:	e8 1c fd ff ff       	call   382 <write>
 666:	e9 5b ff ff ff       	jmp    5c6 <printf+0xf6>
 66b:	66 90                	xchg   %ax,%ax
 66d:	66 90                	xchg   %ax,%ax
 66f:	90                   	nop

00000670 <free>:
static Header base;
static Header *freep;

void
free(void *ap)
{
 670:	55                   	push   %ebp
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 671:	a1 ec 0a 00 00       	mov    0xaec,%eax
static Header base;
static Header *freep;

void
free(void *ap)
{
 676:	89 e5                	mov    %esp,%ebp
 678:	57                   	push   %edi
 679:	56                   	push   %esi
 67a:	53                   	push   %ebx
 67b:	8b 5d 08             	mov    0x8(%ebp),%ebx
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 67e:	8b 10                	mov    (%eax),%edx
void
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
 680:	8d 4b f8             	lea    -0x8(%ebx),%ecx
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 683:	39 c8                	cmp    %ecx,%eax
 685:	73 19                	jae    6a0 <free+0x30>
 687:	89 f6                	mov    %esi,%esi
 689:	8d bc 27 00 00 00 00 	lea    0x0(%edi,%eiz,1),%edi
 690:	39 d1                	cmp    %edx,%ecx
 692:	72 1c                	jb     6b0 <free+0x40>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 694:	39 d0                	cmp    %edx,%eax
 696:	73 18                	jae    6b0 <free+0x40>
static Header base;
static Header *freep;

void
free(void *ap)
{
 698:	89 d0                	mov    %edx,%eax
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 69a:	39 c8                	cmp    %ecx,%eax
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 69c:	8b 10                	mov    (%eax),%edx
free(void *ap)
{
  Header *bp, *p;

  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
 69e:	72 f0                	jb     690 <free+0x20>
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
 6a0:	39 d0                	cmp    %edx,%eax
 6a2:	72 f4                	jb     698 <free+0x28>
 6a4:	39 d1                	cmp    %edx,%ecx
 6a6:	73 f0                	jae    698 <free+0x28>
 6a8:	90                   	nop
 6a9:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
      break;
  if(bp + bp->s.size == p->s.ptr){
 6b0:	8b 73 fc             	mov    -0x4(%ebx),%esi
 6b3:	8d 3c f1             	lea    (%ecx,%esi,8),%edi
 6b6:	39 d7                	cmp    %edx,%edi
 6b8:	74 19                	je     6d3 <free+0x63>
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
 6ba:	89 53 f8             	mov    %edx,-0x8(%ebx)
  if(p + p->s.size == bp){
 6bd:	8b 50 04             	mov    0x4(%eax),%edx
 6c0:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 6c3:	39 f1                	cmp    %esi,%ecx
 6c5:	74 23                	je     6ea <free+0x7a>
    p->s.size += bp->s.size;
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
 6c7:	89 08                	mov    %ecx,(%eax)
  freep = p;
 6c9:	a3 ec 0a 00 00       	mov    %eax,0xaec
}
 6ce:	5b                   	pop    %ebx
 6cf:	5e                   	pop    %esi
 6d0:	5f                   	pop    %edi
 6d1:	5d                   	pop    %ebp
 6d2:	c3                   	ret    
  bp = (Header*)ap - 1;
  for(p = freep; !(bp > p && bp < p->s.ptr); p = p->s.ptr)
    if(p >= p->s.ptr && (bp > p || bp < p->s.ptr))
      break;
  if(bp + bp->s.size == p->s.ptr){
    bp->s.size += p->s.ptr->s.size;
 6d3:	03 72 04             	add    0x4(%edx),%esi
 6d6:	89 73 fc             	mov    %esi,-0x4(%ebx)
    bp->s.ptr = p->s.ptr->s.ptr;
 6d9:	8b 10                	mov    (%eax),%edx
 6db:	8b 12                	mov    (%edx),%edx
 6dd:	89 53 f8             	mov    %edx,-0x8(%ebx)
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
 6e0:	8b 50 04             	mov    0x4(%eax),%edx
 6e3:	8d 34 d0             	lea    (%eax,%edx,8),%esi
 6e6:	39 f1                	cmp    %esi,%ecx
 6e8:	75 dd                	jne    6c7 <free+0x57>
    p->s.size += bp->s.size;
 6ea:	03 53 fc             	add    -0x4(%ebx),%edx
    p->s.ptr = bp->s.ptr;
  } else
    p->s.ptr = bp;
  freep = p;
 6ed:	a3 ec 0a 00 00       	mov    %eax,0xaec
    bp->s.size += p->s.ptr->s.size;
    bp->s.ptr = p->s.ptr->s.ptr;
  } else
    bp->s.ptr = p->s.ptr;
  if(p + p->s.size == bp){
    p->s.size += bp->s.size;
 6f2:	89 50 04             	mov    %edx,0x4(%eax)
    p->s.ptr = bp->s.ptr;
 6f5:	8b 53 f8             	mov    -0x8(%ebx),%edx
 6f8:	89 10                	mov    %edx,(%eax)
  } else
    p->s.ptr = bp;
  freep = p;
}
 6fa:	5b                   	pop    %ebx
 6fb:	5e                   	pop    %esi
 6fc:	5f                   	pop    %edi
 6fd:	5d                   	pop    %ebp
 6fe:	c3                   	ret    
 6ff:	90                   	nop

00000700 <malloc>:
  return freep;
}

void*
malloc(uint nbytes)
{
 700:	55                   	push   %ebp
 701:	89 e5                	mov    %esp,%ebp
 703:	57                   	push   %edi
 704:	56                   	push   %esi
 705:	53                   	push   %ebx
 706:	83 ec 0c             	sub    $0xc,%esp
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 709:	8b 45 08             	mov    0x8(%ebp),%eax
  if((prevp = freep) == 0){
 70c:	8b 15 ec 0a 00 00    	mov    0xaec,%edx
malloc(uint nbytes)
{
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
 712:	8d 78 07             	lea    0x7(%eax),%edi
 715:	c1 ef 03             	shr    $0x3,%edi
 718:	83 c7 01             	add    $0x1,%edi
  if((prevp = freep) == 0){
 71b:	85 d2                	test   %edx,%edx
 71d:	0f 84 a3 00 00 00    	je     7c6 <malloc+0xc6>
 723:	8b 02                	mov    (%edx),%eax
 725:	8b 48 04             	mov    0x4(%eax),%ecx
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
 728:	39 cf                	cmp    %ecx,%edi
 72a:	76 74                	jbe    7a0 <malloc+0xa0>
 72c:	81 ff 00 10 00 00    	cmp    $0x1000,%edi
 732:	be 00 10 00 00       	mov    $0x1000,%esi
 737:	8d 1c fd 00 00 00 00 	lea    0x0(,%edi,8),%ebx
 73e:	0f 43 f7             	cmovae %edi,%esi
 741:	ba 00 80 00 00       	mov    $0x8000,%edx
 746:	81 ff ff 0f 00 00    	cmp    $0xfff,%edi
 74c:	0f 46 da             	cmovbe %edx,%ebx
 74f:	eb 10                	jmp    761 <malloc+0x61>
 751:	8d b4 26 00 00 00 00 	lea    0x0(%esi,%eiz,1),%esi
  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
 758:	8b 02                	mov    (%edx),%eax
    if(p->s.size >= nunits){
 75a:	8b 48 04             	mov    0x4(%eax),%ecx
 75d:	39 cf                	cmp    %ecx,%edi
 75f:	76 3f                	jbe    7a0 <malloc+0xa0>
        p->s.size = nunits;
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
 761:	39 05 ec 0a 00 00    	cmp    %eax,0xaec
 767:	89 c2                	mov    %eax,%edx
 769:	75 ed                	jne    758 <malloc+0x58>
  char *p;
  Header *hp;

  if(nu < 4096)
    nu = 4096;
  p = sbrk(nu * sizeof(Header));
 76b:	83 ec 0c             	sub    $0xc,%esp
 76e:	53                   	push   %ebx
 76f:	e8 76 fc ff ff       	call   3ea <sbrk>
  if(p == (char*)-1)
 774:	83 c4 10             	add    $0x10,%esp
 777:	83 f8 ff             	cmp    $0xffffffff,%eax
 77a:	74 1c                	je     798 <malloc+0x98>
    return 0;
  hp = (Header*)p;
  hp->s.size = nu;
 77c:	89 70 04             	mov    %esi,0x4(%eax)
  free((void*)(hp + 1));
 77f:	83 ec 0c             	sub    $0xc,%esp
 782:	83 c0 08             	add    $0x8,%eax
 785:	50                   	push   %eax
 786:	e8 e5 fe ff ff       	call   670 <free>
  return freep;
 78b:	8b 15 ec 0a 00 00    	mov    0xaec,%edx
      }
      freep = prevp;
      return (void*)(p + 1);
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
 791:	83 c4 10             	add    $0x10,%esp
 794:	85 d2                	test   %edx,%edx
 796:	75 c0                	jne    758 <malloc+0x58>
        return 0;
 798:	31 c0                	xor    %eax,%eax
 79a:	eb 1c                	jmp    7b8 <malloc+0xb8>
 79c:	8d 74 26 00          	lea    0x0(%esi,%eiz,1),%esi
    base.s.ptr = freep = prevp = &base;
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
 7a0:	39 cf                	cmp    %ecx,%edi
 7a2:	74 1c                	je     7c0 <malloc+0xc0>
        prevp->s.ptr = p->s.ptr;
      else {
        p->s.size -= nunits;
 7a4:	29 f9                	sub    %edi,%ecx
 7a6:	89 48 04             	mov    %ecx,0x4(%eax)
        p += p->s.size;
 7a9:	8d 04 c8             	lea    (%eax,%ecx,8),%eax
        p->s.size = nunits;
 7ac:	89 78 04             	mov    %edi,0x4(%eax)
      }
      freep = prevp;
 7af:	89 15 ec 0a 00 00    	mov    %edx,0xaec
      return (void*)(p + 1);
 7b5:	83 c0 08             	add    $0x8,%eax
    }
    if(p == freep)
      if((p = morecore(nunits)) == 0)
        return 0;
  }
}
 7b8:	8d 65 f4             	lea    -0xc(%ebp),%esp
 7bb:	5b                   	pop    %ebx
 7bc:	5e                   	pop    %esi
 7bd:	5f                   	pop    %edi
 7be:	5d                   	pop    %ebp
 7bf:	c3                   	ret    
    base.s.size = 0;
  }
  for(p = prevp->s.ptr; ; prevp = p, p = p->s.ptr){
    if(p->s.size >= nunits){
      if(p->s.size == nunits)
        prevp->s.ptr = p->s.ptr;
 7c0:	8b 08                	mov    (%eax),%ecx
 7c2:	89 0a                	mov    %ecx,(%edx)
 7c4:	eb e9                	jmp    7af <malloc+0xaf>
  Header *p, *prevp;
  uint nunits;

  nunits = (nbytes + sizeof(Header) - 1)/sizeof(Header) + 1;
  if((prevp = freep) == 0){
    base.s.ptr = freep = prevp = &base;
 7c6:	c7 05 ec 0a 00 00 f0 	movl   $0xaf0,0xaec
 7cd:	0a 00 00 
 7d0:	c7 05 f0 0a 00 00 f0 	movl   $0xaf0,0xaf0
 7d7:	0a 00 00 
    base.s.size = 0;
 7da:	b8 f0 0a 00 00       	mov    $0xaf0,%eax
 7df:	c7 05 f4 0a 00 00 00 	movl   $0x0,0xaf4
 7e6:	00 00 00 
 7e9:	e9 3e ff ff ff       	jmp    72c <malloc+0x2c>
