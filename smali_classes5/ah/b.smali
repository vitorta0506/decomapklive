.class public final Lah/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lah/b$a;
    }
.end annotation


# static fields
.field static volatile a:Lcom/google/protobuf/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/f0;->b()Lcom/google/protobuf/f0;

    move-result-object v0

    sput-object v0, Lah/b;->a:Lcom/google/protobuf/f0;

    return-void
.end method

.method static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, "inputStream cannot be null!"

    .line 1
    invoke-static {p0, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "outputStream cannot be null!"

    .line 2
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2000

    new-array v0, v0, [B

    const-wide/16 v1, 0x0

    .line 3
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    return-wide v1

    :cond_0
    const/4 v4, 0x0

    .line 4
    invoke-virtual {p1, v0, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v1, v3

    goto :goto_0
.end method

.method public static b(Lcom/google/protobuf/o1;)Lio/grpc/MethodDescriptor$c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o1;",
            ">(TT;)",
            "Lio/grpc/MethodDescriptor$c<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lah/b$a;

    invoke-direct {v0, p0}, Lah/b$a;-><init>(Lcom/google/protobuf/o1;)V

    return-object v0
.end method
