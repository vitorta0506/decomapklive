.class Lcom/google/auth/oauth2/g;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/auth/oauth2/g;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/google/auth/oauth2/g;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/google/auth/oauth2/g;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/auth/oauth2/g;->c:Ljava/lang/String;

    return-object v0
.end method
