.class public final Lcom/google/api/client/http/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/api/client/util/d0;


# instance fields
.field private final a:Lcom/google/api/client/util/d0;

.field private final b:Lcom/google/api/client/http/g;


# direct methods
.method public constructor <init>(Lcom/google/api/client/util/d0;Lcom/google/api/client/http/g;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/util/d0;

    iput-object p1, p0, Lcom/google/api/client/http/h;->a:Lcom/google/api/client/util/d0;

    .line 3
    invoke-static {p2}, Lcom/google/api/client/util/z;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/api/client/http/g;

    iput-object p1, p0, Lcom/google/api/client/http/h;->b:Lcom/google/api/client/http/g;

    return-void
.end method


# virtual methods
.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/api/client/http/h;->b:Lcom/google/api/client/http/g;

    iget-object v1, p0, Lcom/google/api/client/http/h;->a:Lcom/google/api/client/util/d0;

    invoke-interface {v0, v1, p1}, Lcom/google/api/client/http/g;->a(Lcom/google/api/client/util/d0;Ljava/io/OutputStream;)V

    return-void
.end method
