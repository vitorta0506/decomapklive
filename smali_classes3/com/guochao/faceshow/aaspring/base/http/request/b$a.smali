.class Lcom/guochao/faceshow/aaspring/base/http/request/b$a;
.super Lokio/ForwardingSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/guochao/faceshow/aaspring/base/http/request/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field a:J

.field b:J

.field private final c:Lcom/guochao/faceshow/aaspring/base/http/callback/d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "*>;"
        }
    .end annotation
.end field

.field d:J

.field e:Lvh/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lvh/g<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lokio/Sink;JLcom/guochao/faceshow/aaspring/base/http/callback/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/Sink;",
            "J",
            "Lcom/guochao/faceshow/aaspring/base/http/callback/d<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lokio/ForwardingSink;-><init>(Lokio/Sink;)V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->a:J

    .line 3
    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->b:J

    .line 4
    new-instance p1, Lcom/guochao/faceshow/aaspring/base/http/request/b$a$a;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/base/http/request/b$a$a;-><init>(Lcom/guochao/faceshow/aaspring/base/http/request/b$a;)V

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->e:Lvh/g;

    .line 5
    iput-wide p2, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->b:J

    .line 6
    iput-object p4, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->c:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/base/http/request/b$a;)Lcom/guochao/faceshow/aaspring/base/http/callback/d;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->c:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    return-object p0
.end method


# virtual methods
.method public write(Lokio/Buffer;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Lokio/ForwardingSink;->write(Lokio/Buffer;J)V

    .line 2
    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->a:J

    add-long/2addr v0, p2

    iput-wide v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->a:J

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iget-wide v0, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->d:J

    sub-long/2addr p1, v0

    const-wide/16 v0, 0x32

    cmp-long p3, p1, v0

    if-lez p3, :cond_1

    .line 4
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->c:Lcom/guochao/faceshow/aaspring/base/http/callback/d;

    if-eqz p1, :cond_0

    .line 5
    iget-wide p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->a:J

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lio/reactivex/k;->just(Ljava/lang/Object;)Lio/reactivex/k;

    move-result-object p1

    invoke-static {}, Lsh/a;->a()Lio/reactivex/s;

    move-result-object p2

    invoke-virtual {p1, p2}, Lio/reactivex/k;->observeOn(Lio/reactivex/s;)Lio/reactivex/k;

    move-result-object p1

    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->e:Lvh/g;

    invoke-virtual {p1, p2}, Lio/reactivex/k;->subscribe(Lvh/g;)Lth/b;

    .line 6
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/guochao/faceshow/aaspring/base/http/request/b$a;->d:J

    :cond_1
    return-void
.end method
