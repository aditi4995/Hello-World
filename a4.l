%{
int a,k;
%}
upper [A-Z]
lower [a-z]

%%

{upper} { a = *(yytext);
a-=65;//making as zeroth index
a+=k;//cipher
a%=26;//to bring within the field of letters
a+=65;//converting to ascii equivalent
printf("%c",a);
}

{lower} { a = *(yytext);
a-=97;//making as zeroth index
a+=k;//cipher
a%=26;//to bring within the field of letters
a+=97;//converting to ascii equivalent
//printf("%c",(*(yytext)+3)%(65+26));
printf("%c",a);
}

%%
main()
{
 scanf("%d",&k);
yylex();
}

