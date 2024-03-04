.class final Lkh/a;
.super Loh/a;
.source "SourceFile"


# static fields
.field static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field static final c:Lmh/m;

.field static final d:Lmh/m;

.field static final e:I

.field private static final f:Lmh/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "X-Cloud-Trace-Context"

    .line 1
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lkh/a;->b:Ljava/util/List;

    .line 2
    invoke-static {}, Lmh/m;->a()Lmh/m$b;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmh/m$b;->b(Z)Lmh/m$b;

    move-result-object v0

    invoke-virtual {v0}, Lmh/m$b;->a()Lmh/m;

    move-result-object v0

    sput-object v0, Lkh/a;->c:Lmh/m;

    .line 3
    sget-object v0, Lmh/m;->b:Lmh/m;

    sput-object v0, Lkh/a;->d:Lmh/m;

    const/4 v0, 0x3

    .line 4
    sput v0, Lkh/a;->e:I

    .line 5
    invoke-static {}, Lmh/n;->b()Lmh/n$b;

    move-result-object v0

    invoke-virtual {v0}, Lmh/n$b;->b()Lmh/n;

    move-result-object v0

    sput-object v0, Lkh/a;->f:Lmh/n;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Loh/a;-><init>()V

    return-void
.end method

.method private static b(Lmh/k;)J
    .locals 2

    const/16 v0, 0x8

    .line 1
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lmh/k;->c()[B

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    const/4 p0, 0x0

    .line 3
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Lmh/j;Ljava/lang/Object;Loh/a$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Lmh/j;",
            "TC;",
            "Loh/a$c<",
            "TC;>;)V"
        }
    .end annotation

    const-string v0, "spanContext"

    .line 1
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "setter"

    .line 2
    invoke-static {p3, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "carrier"

    .line 3
    invoke-static {p2, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p1}, Lmh/j;->b()Lmh/l;

    move-result-object v1

    invoke-virtual {v1}, Lmh/l;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {p1}, Lmh/j;->a()Lmh/k;

    move-result-object v1

    invoke-static {v1}, Lkh/a;->b(Lmh/k;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/google/common/primitives/m;->f(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ";o="

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1}, Lmh/j;->c()Lmh/m;

    move-result-object p1

    invoke-virtual {p1}, Lmh/m;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "1"

    goto :goto_0

    :cond_0
    const-string p1, "0"

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "X-Cloud-Trace-Context"

    invoke-virtual {p3, p2, v0, p1}, Loh/a$c;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
