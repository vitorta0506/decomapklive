.class public final Lcom/google/protobuf/h3$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/h3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/h3$c$a;
    }
.end annotation


# static fields
.field private static final f:Lcom/google/protobuf/h3$c;


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/google/protobuf/h3;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3$c;->t()Lcom/google/protobuf/h3$c$a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/h3$c$a;->g()Lcom/google/protobuf/h3$c;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/h3$c;->f:Lcom/google/protobuf/h3$c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/h3$a;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/h3$c;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/h3$c;ILcom/google/protobuf/Writer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/h3$c;->w(ILcom/google/protobuf/Writer;)V

    return-void
.end method

.method static synthetic b(Lcom/google/protobuf/h3$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3$c;->a:Ljava/util/List;

    return-object p0
.end method

.method static synthetic c(Lcom/google/protobuf/h3$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/h3$c;->a:Ljava/util/List;

    return-object p1
.end method

.method static synthetic d(Lcom/google/protobuf/h3$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3$c;->b:Ljava/util/List;

    return-object p0
.end method

.method static synthetic e(Lcom/google/protobuf/h3$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/h3$c;->b:Ljava/util/List;

    return-object p1
.end method

.method static synthetic f(Lcom/google/protobuf/h3$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3$c;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic g(Lcom/google/protobuf/h3$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/h3$c;->c:Ljava/util/List;

    return-object p1
.end method

.method static synthetic h(Lcom/google/protobuf/h3$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3$c;->d:Ljava/util/List;

    return-object p0
.end method

.method static synthetic i(Lcom/google/protobuf/h3$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/h3$c;->d:Ljava/util/List;

    return-object p1
.end method

.method static synthetic j(Lcom/google/protobuf/h3$c;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/h3$c;->e:Ljava/util/List;

    return-object p0
.end method

.method static synthetic k(Lcom/google/protobuf/h3$c;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/google/protobuf/h3$c;->e:Ljava/util/List;

    return-object p1
.end method

.method private o()[Ljava/lang/Object;
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/protobuf/h3$c;->a:Ljava/util/List;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/protobuf/h3$c;->b:Ljava/util/List;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/protobuf/h3$c;->c:Ljava/util/List;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/protobuf/h3$c;->d:Ljava/util/List;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    iget-object v1, p0, Lcom/google/protobuf/h3$c;->e:Ljava/util/List;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static t()Lcom/google/protobuf/h3$c$a;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3$c$a;->a()Lcom/google/protobuf/h3$c$a;

    move-result-object v0

    return-object v0
.end method

.method public static u(Lcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$c$a;
    .locals 1

    invoke-static {}, Lcom/google/protobuf/h3$c;->t()Lcom/google/protobuf/h3$c$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/protobuf/h3$c$a;->j(Lcom/google/protobuf/h3$c;)Lcom/google/protobuf/h3$c$a;

    move-result-object p0

    return-object p0
.end method

.method private w(ILcom/google/protobuf/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->z()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 3
    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/Writer;->c(ILjava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 6
    invoke-interface {p2, p1, v1}, Lcom/google/protobuf/Writer;->c(ILjava/lang/Object;)V

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/h3$c;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    invoke-direct {p0}, Lcom/google/protobuf/h3$c;->o()[Ljava/lang/Object;

    move-result-object v0

    check-cast p1, Lcom/google/protobuf/h3$c;

    invoke-direct {p1}, Lcom/google/protobuf/h3$c;->o()[Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-direct {p0}, Lcom/google/protobuf/h3$c;->o()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public l()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/h3$c;->b:Ljava/util/List;

    return-object v0
.end method

.method public m()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/h3$c;->c:Ljava/util/List;

    return-object v0
.end method

.method public n()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/h3;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/h3$c;->e:Ljava/util/List;

    return-object v0
.end method

.method public p()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/google/protobuf/ByteString;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/h3$c;->d:Ljava/util/List;

    return-object v0
.end method

.method public q(I)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 2
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->a0(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 4
    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->n(II)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 6
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/CodedOutputStream;->p(IJ)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 8
    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->h(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_3

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3;

    .line 10
    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->t(ILcom/google/protobuf/o1;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_4

    :cond_4
    return v1
.end method

.method public r(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/ByteString;

    .line 2
    invoke-static {p1, v2}, Lcom/google/protobuf/CodedOutputStream;->L(ILcom/google/protobuf/ByteString;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public s()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/protobuf/h3$c;->a:Ljava/util/List;

    return-object v0
.end method

.method public v(ILcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 2
    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->P0(ILcom/google/protobuf/ByteString;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public x(ILcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 2
    invoke-virtual {p2, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->e1(IJ)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 4
    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->x0(II)V

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 6
    invoke-virtual {p2, p1, v1, v2}, Lcom/google/protobuf/CodedOutputStream;->z0(IJ)V

    goto :goto_2

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ByteString;

    .line 8
    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->r0(ILcom/google/protobuf/ByteString;)V

    goto :goto_3

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/h3;

    .line 10
    invoke-virtual {p2, p1, v1}, Lcom/google/protobuf/CodedOutputStream;->D0(ILcom/google/protobuf/o1;)V

    goto :goto_4

    :cond_4
    return-void
.end method

.method y(ILcom/google/protobuf/Writer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v0, v1}, Lcom/google/protobuf/Writer;->P(ILjava/util/List;Z)V

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->b:Ljava/util/List;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/protobuf/Writer;->n(ILjava/util/List;Z)V

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->c:Ljava/util/List;

    invoke-interface {p2, p1, v0, v1}, Lcom/google/protobuf/Writer;->G(ILjava/util/List;Z)V

    .line 4
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->d:Ljava/util/List;

    invoke-interface {p2, p1, v0}, Lcom/google/protobuf/Writer;->S(ILjava/util/List;)V

    .line 5
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->z()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v2, Lcom/google/protobuf/Writer$FieldOrder;->ASCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v2, :cond_0

    .line 6
    :goto_0
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 7
    invoke-interface {p2, p1}, Lcom/google/protobuf/Writer;->F(I)V

    .line 8
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->e:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/h3;

    invoke-virtual {v0, p2}, Lcom/google/protobuf/h3;->o(Lcom/google/protobuf/Writer;)V

    .line 9
    invoke-interface {p2, p1}, Lcom/google/protobuf/Writer;->M(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/h3$c;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_1

    .line 11
    invoke-interface {p2, p1}, Lcom/google/protobuf/Writer;->M(I)V

    .line 12
    iget-object v1, p0, Lcom/google/protobuf/h3$c;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/h3;

    invoke-virtual {v1, p2}, Lcom/google/protobuf/h3;->o(Lcom/google/protobuf/Writer;)V

    .line 13
    invoke-interface {p2, p1}, Lcom/google/protobuf/Writer;->F(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_1
    return-void
.end method
