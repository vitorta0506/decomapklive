.class public final Lio/grpc/h0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/h0$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field public static final b:Lcom/google/common/io/BaseEncoding;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "US-ASCII"

    .line 1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lio/grpc/h0;->a:Ljava/nio/charset/Charset;

    .line 2
    sget-object v0, Lio/grpc/s0;->f:Lcom/google/common/io/BaseEncoding;

    sput-object v0, Lio/grpc/h0;->b:Lcom/google/common/io/BaseEncoding;

    return-void
.end method

.method public static a(Lio/grpc/s0;)I
    .locals 0

    invoke-virtual {p0}, Lio/grpc/s0;->m()I

    move-result p0

    return p0
.end method

.method public static b(Ljava/lang/String;Lio/grpc/h0$a;)Lio/grpc/s0$i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lio/grpc/h0$a<",
            "TT;>;)",
            "Lio/grpc/s0$i<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 2
    :cond_0
    invoke-static {p0, v0, p1}, Lio/grpc/s0$i;->h(Ljava/lang/String;ZLio/grpc/s0$l;)Lio/grpc/s0$i;

    move-result-object p0

    return-object p0
.end method

.method public static varargs c(I[[B)Lio/grpc/s0;
    .locals 1

    new-instance v0, Lio/grpc/s0;

    invoke-direct {v0, p0, p1}, Lio/grpc/s0;-><init>(I[[B)V

    return-object v0
.end method

.method public static varargs d([[B)Lio/grpc/s0;
    .locals 1

    new-instance v0, Lio/grpc/s0;

    invoke-direct {v0, p0}, Lio/grpc/s0;-><init>([[B)V

    return-object v0
.end method

.method public static e(Lio/grpc/s0;)[[B
    .locals 0

    invoke-virtual {p0}, Lio/grpc/s0;->u()[[B

    move-result-object p0

    return-object p0
.end method
