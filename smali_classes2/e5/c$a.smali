.class Le5/c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le5/c;->o(Le5/c$c;Ljava/io/OutputStream;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Le5/c$c;

.field final synthetic b:Ljava/io/OutputStream;

.field final synthetic c:Lcom/google/api/client/util/d0;

.field final synthetic d:Le5/c;


# direct methods
.method constructor <init>(Le5/c;Le5/c$c;Ljava/io/OutputStream;Lcom/google/api/client/util/d0;)V
    .locals 0

    iput-object p1, p0, Le5/c$a;->d:Le5/c;

    iput-object p2, p0, Le5/c$a;->a:Le5/c$c;

    iput-object p3, p0, Le5/c$a;->b:Ljava/io/OutputStream;

    iput-object p4, p0, Le5/c$a;->c:Lcom/google/api/client/util/d0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Boolean;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le5/c$a;->a:Le5/c$c;

    iget-object v1, p0, Le5/c$a;->b:Ljava/io/OutputStream;

    iget-object v2, p0, Le5/c$a;->c:Lcom/google/api/client/util/d0;

    invoke-interface {v0, v1, v2}, Le5/c$c;->a(Ljava/io/OutputStream;Lcom/google/api/client/util/d0;)V

    .line 2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Le5/c$a;->a()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
