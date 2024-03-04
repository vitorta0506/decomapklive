.class Lcom/google/auth/oauth2/OAuth2Credentials$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/auth/oauth2/OAuth2Credentials;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "c"
.end annotation


# instance fields
.field private final a:Lcom/google/common/util/concurrent/e0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/util/concurrent/e0<",
            "Lcom/google/auth/oauth2/OAuth2Credentials$h;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Z


# direct methods
.method constructor <init>(Lcom/google/common/util/concurrent/e0;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/e0<",
            "Lcom/google/auth/oauth2/OAuth2Credentials$h;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/auth/oauth2/OAuth2Credentials$c;->a:Lcom/google/common/util/concurrent/e0;

    .line 3
    iput-boolean p2, p0, Lcom/google/auth/oauth2/OAuth2Credentials$c;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/google/auth/oauth2/OAuth2Credentials$c;)Lcom/google/common/util/concurrent/e0;
    .locals 0

    iget-object p0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$c;->a:Lcom/google/common/util/concurrent/e0;

    return-object p0
.end method


# virtual methods
.method b(Ljava/util/concurrent/Executor;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$c;->b:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/auth/oauth2/OAuth2Credentials$c;->a:Lcom/google/common/util/concurrent/e0;

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
