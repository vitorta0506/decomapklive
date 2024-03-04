.class final Lcom/google/protobuf/o0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/o0$b;,
        Lcom/google/protobuf/o0$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcom/google/protobuf/o0$c<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final d:Lcom/google/protobuf/o0;


# instance fields
.field private final a:Lcom/google/protobuf/r2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/r2<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/protobuf/o0;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/o0;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/o0;->d:Lcom/google/protobuf/o0;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    .line 3
    invoke-static {v0}, Lcom/google/protobuf/r2;->q(I)Lcom/google/protobuf/r2;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    return-void
.end method

.method private constructor <init>(Lcom/google/protobuf/r2;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/r2<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    .line 8
    invoke-virtual {p0}, Lcom/google/protobuf/o0;->F()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/protobuf/r2;Lcom/google/protobuf/o0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/protobuf/o0;-><init>(Lcom/google/protobuf/r2;)V

    return-void
.end method

.method private constructor <init>(Z)V
    .locals 0

    const/4 p1, 0x0

    .line 4
    invoke-static {p1}, Lcom/google/protobuf/r2;->q(I)Lcom/google/protobuf/r2;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/protobuf/o0;-><init>(Lcom/google/protobuf/r2;)V

    .line 5
    invoke-virtual {p0}, Lcom/google/protobuf/o0;->F()V

    return-void
.end method

.method private static C(Ljava/util/Map$Entry;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$c;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->s0()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o1;

    .line 5
    invoke-interface {v0}, Lcom/google/protobuf/p1;->isInitialized()Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    .line 6
    :cond_1
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    .line 7
    instance-of v0, p0, Lcom/google/protobuf/o1;

    if-eqz v0, :cond_2

    .line 8
    check-cast p0, Lcom/google/protobuf/o1;

    invoke-interface {p0}, Lcom/google/protobuf/p1;->isInitialized()Z

    move-result p0

    if-nez p0, :cond_4

    return v1

    .line 9
    :cond_2
    instance-of p0, p0, Lcom/google/protobuf/w0;

    if-eqz p0, :cond_3

    return v3

    .line 10
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Wrong object type used with protocol message reflection."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    return v3
.end method

.method private static D(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/u0;->a(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v0, Lcom/google/protobuf/o0$a;->a:[I

    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    packed-switch p0, :pswitch_data_0

    return v1

    .line 3
    :pswitch_0
    instance-of p0, p1, Lcom/google/protobuf/o1;

    if-nez p0, :cond_1

    instance-of p0, p1, Lcom/google/protobuf/w0;

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 4
    :pswitch_1
    instance-of p0, p1, Ljava/lang/Integer;

    if-nez p0, :cond_3

    instance-of p0, p1, Lcom/google/protobuf/u0$c;

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :cond_3
    :goto_1
    return v0

    .line 5
    :pswitch_2
    instance-of p0, p1, Lcom/google/protobuf/ByteString;

    if-nez p0, :cond_5

    instance-of p0, p1, [B

    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :cond_5
    :goto_2
    return v0

    .line 6
    :pswitch_3
    instance-of p0, p1, Ljava/lang/String;

    return p0

    .line 7
    :pswitch_4
    instance-of p0, p1, Ljava/lang/Boolean;

    return p0

    .line 8
    :pswitch_5
    instance-of p0, p1, Ljava/lang/Double;

    return p0

    .line 9
    :pswitch_6
    instance-of p0, p1, Ljava/lang/Float;

    return p0

    .line 10
    :pswitch_7
    instance-of p0, p1, Ljava/lang/Long;

    return p0

    .line 11
    :pswitch_8
    instance-of p0, p1, Ljava/lang/Integer;

    return p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private H(Ljava/util/Map$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$c;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lcom/google/protobuf/w0;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/google/protobuf/w0;

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->g()Lcom/google/protobuf/o1;

    move-result-object p1

    .line 5
    :cond_0
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Lcom/google/protobuf/o0;->r(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 9
    move-object v3, v1

    check-cast v3, Ljava/util/List;

    invoke-static {v2}, Lcom/google/protobuf/o0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/r2;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 11
    :cond_3
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->s0()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_5

    .line 12
    invoke-virtual {p0, v0}, Lcom/google/protobuf/o0;->r(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4

    .line 13
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-static {p1}, Lcom/google/protobuf/o0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/r2;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_4
    check-cast v1, Lcom/google/protobuf/o1;

    .line 15
    invoke-interface {v1}, Lcom/google/protobuf/o1;->toBuilder()Lcom/google/protobuf/o1$a;

    move-result-object v1

    check-cast p1, Lcom/google/protobuf/o1;

    invoke-interface {v0, v1, p1}, Lcom/google/protobuf/o0$c;->n(Lcom/google/protobuf/o1$a;Lcom/google/protobuf/o1;)Lcom/google/protobuf/o1$a;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Lcom/google/protobuf/o1$a;->build()Lcom/google/protobuf/o1;

    move-result-object p1

    .line 17
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/r2;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 18
    :cond_5
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-static {p1}, Lcom/google/protobuf/o0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Lcom/google/protobuf/r2;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method public static I()Lcom/google/protobuf/o0$b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>()",
            "Lcom/google/protobuf/o0$b<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/o0$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/protobuf/o0$b;-><init>(Lcom/google/protobuf/o0$a;)V

    return-object v0
.end method

.method public static J()Lcom/google/protobuf/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>()",
            "Lcom/google/protobuf/o0<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, Lcom/google/protobuf/o0;

    invoke-direct {v0}, Lcom/google/protobuf/o0;-><init>()V

    return-object v0
.end method

.method public static K(Lcom/google/protobuf/p;Lcom/google/protobuf/WireFormat$FieldType;Z)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    sget-object p2, Lcom/google/protobuf/WireFormat$b;->b:Lcom/google/protobuf/WireFormat$b;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/WireFormat;->d(Lcom/google/protobuf/p;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2
    :cond_0
    sget-object p2, Lcom/google/protobuf/WireFormat$b;->a:Lcom/google/protobuf/WireFormat$b;

    invoke-static {p0, p1, p2}, Lcom/google/protobuf/WireFormat;->d(Lcom/google/protobuf/p;Lcom/google/protobuf/WireFormat$FieldType;Lcom/google/protobuf/WireFormat$b;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private M(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/protobuf/o0;->D(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 3
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 4
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/protobuf/WireFormat$FieldType;->getJavaType()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object p1

    aput-object p1, v1, v2

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v1, p1

    const-string p1, "Wrong object type used with protocol message reflection.\nField number: %d, field java type: %s, value type: %s\n"

    .line 6
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static N(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p1, v0, :cond_0

    .line 2
    check-cast p3, Lcom/google/protobuf/o1;

    invoke-virtual {p0, p2, p3}, Lcom/google/protobuf/CodedOutputStream;->D0(ILcom/google/protobuf/o1;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-static {p1, v0}, Lcom/google/protobuf/o0;->x(Lcom/google/protobuf/WireFormat$FieldType;Z)I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/google/protobuf/CodedOutputStream;->b1(II)V

    .line 4
    invoke-static {p0, p1, p3}, Lcom/google/protobuf/o0;->O(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    :goto_0
    return-void
.end method

.method static O(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/o0$a;->b:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 2
    :pswitch_0
    instance-of p1, p2, Lcom/google/protobuf/u0$c;

    if-eqz p1, :cond_0

    .line 3
    check-cast p2, Lcom/google/protobuf/u0$c;

    invoke-interface {p2}, Lcom/google/protobuf/u0$c;->getNumber()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->w0(I)V

    goto/16 :goto_0

    .line 4
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->w0(I)V

    goto/16 :goto_0

    .line 5
    :pswitch_1
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->Y0(J)V

    goto/16 :goto_0

    .line 6
    :pswitch_2
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->W0(I)V

    goto/16 :goto_0

    .line 7
    :pswitch_3
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->U0(J)V

    goto/16 :goto_0

    .line 8
    :pswitch_4
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->S0(I)V

    goto/16 :goto_0

    .line 9
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->d1(I)V

    goto/16 :goto_0

    .line 10
    :pswitch_6
    instance-of p1, p2, Lcom/google/protobuf/ByteString;

    if-eqz p1, :cond_1

    .line 11
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->s0(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_0

    .line 12
    :cond_1
    check-cast p2, [B

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->p0([B)V

    goto/16 :goto_0

    .line 13
    :pswitch_7
    instance-of p1, p2, Lcom/google/protobuf/ByteString;

    if-eqz p1, :cond_2

    .line 14
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->s0(Lcom/google/protobuf/ByteString;)V

    goto :goto_0

    .line 15
    :cond_2
    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->a1(Ljava/lang/String;)V

    goto :goto_0

    .line 16
    :pswitch_8
    check-cast p2, Lcom/google/protobuf/o1;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->N0(Lcom/google/protobuf/o1;)V

    goto :goto_0

    .line 17
    :pswitch_9
    check-cast p2, Lcom/google/protobuf/o1;

    invoke-virtual {p0, p2}, Lcom/google/protobuf/CodedOutputStream;->F0(Lcom/google/protobuf/o1;)V

    goto :goto_0

    .line 18
    :pswitch_a
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->o0(Z)V

    goto :goto_0

    .line 19
    :pswitch_b
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->y0(I)V

    goto :goto_0

    .line 20
    :pswitch_c
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->A0(J)V

    goto :goto_0

    .line 21
    :pswitch_d
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->I0(I)V

    goto :goto_0

    .line 22
    :pswitch_e
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->f1(J)V

    goto :goto_0

    .line 23
    :pswitch_f
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->K0(J)V

    goto :goto_0

    .line 24
    :pswitch_10
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->C0(F)V

    goto :goto_0

    .line 25
    :pswitch_11
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/google/protobuf/CodedOutputStream;->u0(D)V

    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/o0$c<",
            "*>;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result v1

    .line 3
    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    check-cast p1, Ljava/util/List;

    .line 5
    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->isPacked()Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x2

    .line 6
    invoke-virtual {p2, v1, p0}, Lcom/google/protobuf/CodedOutputStream;->b1(II)V

    const/4 p0, 0x0

    .line 7
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-static {v0, v2}, Lcom/google/protobuf/o0;->m(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr p0, v2

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p2, p0}, Lcom/google/protobuf/CodedOutputStream;->Q0(I)V

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 11
    invoke-static {p2, v0, p1}, Lcom/google/protobuf/o0;->O(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)V

    goto :goto_1

    .line 12
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-static {p2, v0, v1, p1}, Lcom/google/protobuf/o0;->N(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_2

    .line 14
    :cond_2
    instance-of p0, p1, Lcom/google/protobuf/w0;

    if-eqz p0, :cond_3

    .line 15
    check-cast p1, Lcom/google/protobuf/w0;

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->g()Lcom/google/protobuf/o1;

    move-result-object p0

    invoke-static {p2, v0, v1, p0}, Lcom/google/protobuf/o0;->N(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    goto :goto_3

    .line 16
    :cond_3
    invoke-static {p2, v0, v1, p1}, Lcom/google/protobuf/o0;->N(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)V

    :cond_4
    :goto_3
    return-void
.end method

.method private R(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/google/protobuf/CodedOutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$c;

    .line 2
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->s0()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v1

    sget-object v2, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v1, v2, :cond_1

    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->isPacked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 6
    instance-of v1, v0, Lcom/google/protobuf/w0;

    if-eqz v1, :cond_0

    .line 7
    check-cast v0, Lcom/google/protobuf/w0;

    invoke-virtual {v0}, Lcom/google/protobuf/w0;->g()Lcom/google/protobuf/o1;

    move-result-object v0

    .line 8
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o0$c;

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result p1

    check-cast v0, Lcom/google/protobuf/o1;

    invoke-virtual {p2, p1, v0}, Lcom/google/protobuf/CodedOutputStream;->O0(ILcom/google/protobuf/o1;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    invoke-static {v0, p1, p2}, Lcom/google/protobuf/o0;->P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/r2;Z)Lcom/google/protobuf/r2;
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/o0;->i(Lcom/google/protobuf/r2;Z)Lcom/google/protobuf/r2;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/protobuf/o0;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/google/protobuf/o0;->c:Z

    return p1
.end method

.method static synthetic c(Lcom/google/protobuf/o0;)Lcom/google/protobuf/r2;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    return-object p0
.end method

.method static synthetic d(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z
    .locals 0

    invoke-static {p0, p1}, Lcom/google/protobuf/o0;->D(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic e(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0}, Lcom/google/protobuf/o0;->k(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private static i(Lcom/google/protobuf/r2;Z)Lcom/google/protobuf/r2;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>(",
            "Lcom/google/protobuf/r2<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)",
            "Lcom/google/protobuf/r2<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-static {v0}, Lcom/google/protobuf/r2;->q(I)Lcom/google/protobuf/r2;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/r2;->k()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcom/google/protobuf/r2;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v0, v2, p1}, Lcom/google/protobuf/o0;->j(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/r2;->m()Ljava/lang/Iterable;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/o0;->j(Ljava/util/Map;Ljava/util/Map$Entry;Z)V

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private static j(Ljava/util/Map;Ljava/util/Map$Entry;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>(",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$c;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    .line 3
    instance-of v1, p1, Lcom/google/protobuf/w0;

    if-eqz v1, :cond_0

    .line 4
    check-cast p1, Lcom/google/protobuf/w0;

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->g()Lcom/google/protobuf/o1;

    move-result-object p1

    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    .line 5
    instance-of p2, p1, Ljava/util/List;

    if-eqz p2, :cond_1

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    check-cast p1, Ljava/util/List;

    invoke-direct {p2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {p0, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {p0, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method private static k(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p0, [B

    if-eqz v0, :cond_0

    .line 2
    check-cast p0, [B

    .line 3
    array-length v0, p0

    new-array v0, v0, [B

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v0

    :cond_0
    return-object p0
.end method

.method static l(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p1

    .line 2
    sget-object v0, Lcom/google/protobuf/WireFormat$FieldType;->GROUP:Lcom/google/protobuf/WireFormat$FieldType;

    if-ne p0, v0, :cond_0

    mul-int/lit8 p1, p1, 0x2

    .line 3
    :cond_0
    invoke-static {p0, p2}, Lcom/google/protobuf/o0;->m(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method static m(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/protobuf/o0$a;->b:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    .line 2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "There is no way to get here, but the compiler thinks otherwise."

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :pswitch_0
    instance-of p0, p1, Lcom/google/protobuf/u0$c;

    if-eqz p0, :cond_0

    .line 4
    check-cast p1, Lcom/google/protobuf/u0$c;

    invoke-interface {p1}, Lcom/google/protobuf/u0$c;->getNumber()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->m(I)I

    move-result p0

    return p0

    .line 5
    :cond_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->m(I)I

    move-result p0

    return p0

    .line 6
    :pswitch_1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->U(J)I

    move-result p0

    return p0

    .line 7
    :pswitch_2
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->S(I)I

    move-result p0

    return p0

    .line 8
    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->Q(J)I

    move-result p0

    return p0

    .line 9
    :pswitch_4
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->O(I)I

    move-result p0

    return p0

    .line 10
    :pswitch_5
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->Z(I)I

    move-result p0

    return p0

    .line 11
    :pswitch_6
    instance-of p0, p1, Lcom/google/protobuf/ByteString;

    if-eqz p0, :cond_1

    .line 12
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->i(Lcom/google/protobuf/ByteString;)I

    move-result p0

    return p0

    .line 13
    :cond_1
    check-cast p1, [B

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->g([B)I

    move-result p0

    return p0

    .line 14
    :pswitch_7
    instance-of p0, p1, Lcom/google/protobuf/ByteString;

    if-eqz p0, :cond_2

    .line 15
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->i(Lcom/google/protobuf/ByteString;)I

    move-result p0

    return p0

    .line 16
    :cond_2
    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->W(Ljava/lang/String;)I

    move-result p0

    return p0

    .line 17
    :pswitch_8
    instance-of p0, p1, Lcom/google/protobuf/w0;

    if-eqz p0, :cond_3

    .line 18
    check-cast p1, Lcom/google/protobuf/w0;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->D(Lcom/google/protobuf/x0;)I

    move-result p0

    return p0

    .line 19
    :cond_3
    check-cast p1, Lcom/google/protobuf/o1;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->I(Lcom/google/protobuf/o1;)I

    move-result p0

    return p0

    .line 20
    :pswitch_9
    check-cast p1, Lcom/google/protobuf/o1;

    invoke-static {p1}, Lcom/google/protobuf/CodedOutputStream;->v(Lcom/google/protobuf/o1;)I

    move-result p0

    return p0

    .line 21
    :pswitch_a
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->f(Z)I

    move-result p0

    return p0

    .line 22
    :pswitch_b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->o(I)I

    move-result p0

    return p0

    .line 23
    :pswitch_c
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->q(J)I

    move-result p0

    return p0

    .line 24
    :pswitch_d
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->y(I)I

    move-result p0

    return p0

    .line 25
    :pswitch_e
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->b0(J)I

    move-result p0

    return p0

    .line 26
    :pswitch_f
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->A(J)I

    move-result p0

    return p0

    .line 27
    :pswitch_10
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p0

    invoke-static {p0}, Lcom/google/protobuf/CodedOutputStream;->s(F)I

    move-result p0

    return p0

    .line 28
    :pswitch_11
    check-cast p1, Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/CodedOutputStream;->k(D)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static n(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/o0$c<",
            "*>;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->e0()Lcom/google/protobuf/WireFormat$FieldType;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result v1

    .line 3
    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    invoke-interface {p0}, Lcom/google/protobuf/o0$c;->isPacked()Z

    move-result p0

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 5
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Lcom/google/protobuf/o0;->m(Lcom/google/protobuf/WireFormat$FieldType;Ljava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_0

    .line 7
    :cond_0
    invoke-static {v1}, Lcom/google/protobuf/CodedOutputStream;->X(I)I

    move-result p0

    add-int/2addr p0, v2

    .line 8
    invoke-static {v2}, Lcom/google/protobuf/CodedOutputStream;->M(I)I

    move-result p1

    add-int/2addr p0, p1

    return p0

    .line 9
    :cond_1
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 10
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/o0;->l(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p1

    add-int/2addr v2, p1

    goto :goto_1

    :cond_2
    return v2

    .line 11
    :cond_3
    invoke-static {v0, v1, p1}, Lcom/google/protobuf/o0;->l(Lcom/google/protobuf/WireFormat$FieldType;ILjava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public static p()Lcom/google/protobuf/o0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/google/protobuf/o0$c<",
            "TT;>;>()",
            "Lcom/google/protobuf/o0<",
            "TT;>;"
        }
    .end annotation

    sget-object v0, Lcom/google/protobuf/o0;->d:Lcom/google/protobuf/o0;

    return-object v0
.end method

.method private t(Ljava/util/Map$Entry;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/o0$c;

    .line 2
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    .line 3
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->s0()Lcom/google/protobuf/WireFormat$JavaType;

    move-result-object v2

    sget-object v3, Lcom/google/protobuf/WireFormat$JavaType;->MESSAGE:Lcom/google/protobuf/WireFormat$JavaType;

    if-ne v2, v3, :cond_1

    .line 4
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v2

    if-nez v2, :cond_1

    .line 5
    invoke-interface {v0}, Lcom/google/protobuf/o0$c;->isPacked()Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    instance-of v0, v1, Lcom/google/protobuf/w0;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o0$c;

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result p1

    check-cast v1, Lcom/google/protobuf/w0;

    .line 8
    invoke-static {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->B(ILcom/google/protobuf/x0;)I

    move-result p1

    return p1

    .line 9
    :cond_0
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/protobuf/o0$c;

    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->getNumber()I

    move-result p1

    check-cast v1, Lcom/google/protobuf/o1;

    .line 10
    invoke-static {p1, v1}, Lcom/google/protobuf/CodedOutputStream;->F(ILcom/google/protobuf/o1;)I

    move-result p1

    return p1

    .line 11
    :cond_1
    invoke-static {v0, v1}, Lcom/google/protobuf/o0;->n(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method static x(Lcom/google/protobuf/WireFormat$FieldType;Z)I
    .locals 0

    if-eqz p1, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/WireFormat$FieldType;->getWireType()I

    move-result p0

    return p0
.end method


# virtual methods
.method public A()Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/protobuf/o0;->b:Z

    return v0
.end method

.method public B()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v2}, Lcom/google/protobuf/r2;->k()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/r2;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-static {v2}, Lcom/google/protobuf/o0;->C(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->m()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-static {v2}, Lcom/google/protobuf/o0;->C(Ljava/util/Map$Entry;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method public E()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/o0;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/w0$c;

    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/w0$c;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public F()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/o0;->b:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->p()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/google/protobuf/o0;->b:Z

    return-void
.end method

.method public G(Lcom/google/protobuf/o0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/o0<",
            "TT;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p1, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->k()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p1, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/r2;->j(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/protobuf/o0;->H(Ljava/util/Map$Entry;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {p1}, Lcom/google/protobuf/r2;->m()Ljava/lang/Iterable;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 4
    invoke-direct {p0, v0}, Lcom/google/protobuf/o0;->H(Ljava/util/Map$Entry;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public L(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    check-cast p2, Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    invoke-direct {p0, p1, v1}, Lcom/google/protobuf/o0;->M(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p2, v0

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Wrong object type used with protocol message reflection."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o0;->M(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    .line 9
    :goto_1
    instance-of v0, p2, Lcom/google/protobuf/w0;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/google/protobuf/o0;->c:Z

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0, p1, p2}, Lcom/google/protobuf/r2;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public Q(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->k()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/r2;->j(I)Ljava/util/Map$Entry;

    move-result-object v1

    invoke-direct {p0, v1, p1}, Lcom/google/protobuf/o0;->R(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->m()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4
    invoke-direct {p0, v1, p1}, Lcom/google/protobuf/o0;->R(Ljava/util/Map$Entry;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public S(Lcom/google/protobuf/CodedOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->k()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1, v0}, Lcom/google/protobuf/r2;->j(I)Ljava/util/Map$Entry;

    move-result-object v1

    .line 3
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o0$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/google/protobuf/o0;->P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->m()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/o0$c;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v2, v1, p1}, Lcom/google/protobuf/o0;->P(Lcom/google/protobuf/o0$c;Ljava/lang/Object;Lcom/google/protobuf/CodedOutputStream;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/google/protobuf/o0;->h()Lcom/google/protobuf/o0;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/protobuf/o0;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/protobuf/o0;

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    iget-object p1, p1, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/o0;->M(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    .line 3
    invoke-virtual {p0, p1}, Lcom/google/protobuf/o0;->r(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1, p1, v0}, Lcom/google/protobuf/r2;->r(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 6
    :cond_0
    check-cast v0, Ljava/util/List;

    .line 7
    :goto_0
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 8
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "addRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public g(Lcom/google/protobuf/o0$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {p1}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/google/protobuf/o0;->c:Z

    :cond_0
    return-void
.end method

.method public h()Lcom/google/protobuf/o0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/o0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/google/protobuf/o0;->J()Lcom/google/protobuf/o0;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v2}, Lcom/google/protobuf/r2;->k()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v2, v1}, Lcom/google/protobuf/r2;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o0$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/o0;->L(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->m()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o0$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lcom/google/protobuf/o0;->L(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-boolean v1, p0, Lcom/google/protobuf/o0;->c:Z

    iput-boolean v1, v0, Lcom/google/protobuf/o0;->c:Z

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->hashCode()I

    move-result v0

    return v0
.end method

.method o()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TT;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/o0;->c:Z

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/google/protobuf/w0$c;

    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->h()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/protobuf/w0$c;-><init>(Ljava/util/Iterator;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->h()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public q()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/o0;->c:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/protobuf/o0;->i(Lcom/google/protobuf/r2;Z)Lcom/google/protobuf/r2;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v1}, Lcom/google/protobuf/r2;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/google/protobuf/r2;->p()V

    :cond_0
    return-object v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->o()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public r(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 2
    instance-of v0, p1, Lcom/google/protobuf/w0;

    if-eqz v0, :cond_0

    .line 3
    check-cast p1, Lcom/google/protobuf/w0;

    invoke-virtual {p1}, Lcom/google/protobuf/w0;->g()Lcom/google/protobuf/o1;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public s()I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v2}, Lcom/google/protobuf/r2;->k()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/r2;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/protobuf/o0;->t(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->m()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4
    invoke-direct {p0, v2}, Lcom/google/protobuf/o0;->t(Ljava/util/Map$Entry;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public u(Lcom/google/protobuf/o0$c;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/o0;->r(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    check-cast p1, Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public v(Lcom/google/protobuf/o0$c;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/protobuf/o0;->r(Lcom/google/protobuf/o0$c;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 3
    :cond_0
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    return p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "getRepeatedField() can only be called on repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public w()I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v2}, Lcom/google/protobuf/r2;->k()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 2
    iget-object v2, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v2, v0}, Lcom/google/protobuf/r2;->j(I)Ljava/util/Map$Entry;

    move-result-object v2

    .line 3
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o0$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/o0;->n(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Lcom/google/protobuf/r2;->m()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 5
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/o0$c;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/google/protobuf/o0;->n(Lcom/google/protobuf/o0$c;Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v1, v2

    goto :goto_1

    :cond_1
    return v1
.end method

.method public y(Lcom/google/protobuf/o0$c;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/o0$c;->isRepeated()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0, p1}, Lcom/google/protobuf/r2;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    .line 3
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "hasField() can only be called on non-repeated fields."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method z()Z
    .locals 1

    iget-object v0, p0, Lcom/google/protobuf/o0;->a:Lcom/google/protobuf/r2;

    invoke-virtual {v0}, Ljava/util/AbstractMap;->isEmpty()Z

    move-result v0

    return v0
.end method
