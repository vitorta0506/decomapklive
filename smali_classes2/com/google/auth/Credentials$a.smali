.class Lcom/google/auth/Credentials$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/auth/Credentials;->getRequestMetadata(Ljava/net/URI;Ljava/util/concurrent/Executor;Lcom/google/auth/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/net/URI;

.field final synthetic b:Lcom/google/auth/a;

.field final synthetic c:Lcom/google/auth/Credentials;


# direct methods
.method constructor <init>(Lcom/google/auth/Credentials;Ljava/net/URI;Lcom/google/auth/a;)V
    .locals 0

    iput-object p1, p0, Lcom/google/auth/Credentials$a;->c:Lcom/google/auth/Credentials;

    iput-object p2, p0, Lcom/google/auth/Credentials$a;->a:Ljava/net/URI;

    iput-object p3, p0, Lcom/google/auth/Credentials$a;->b:Lcom/google/auth/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/google/auth/Credentials$a;->c:Lcom/google/auth/Credentials;

    iget-object v1, p0, Lcom/google/auth/Credentials$a;->a:Ljava/net/URI;

    iget-object v2, p0, Lcom/google/auth/Credentials$a;->b:Lcom/google/auth/a;

    invoke-virtual {v0, v1, v2}, Lcom/google/auth/Credentials;->blockingGetToCallback(Ljava/net/URI;Lcom/google/auth/a;)V

    return-void
.end method
