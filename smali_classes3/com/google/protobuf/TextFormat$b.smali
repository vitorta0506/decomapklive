.class public final Lcom/google/protobuf/TextFormat$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/TextFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/TextFormat$b$a;
    }
.end annotation


# static fields
.field private static final c:Lcom/google/protobuf/TextFormat$b;


# instance fields
.field private final a:Z

.field private final b:Lcom/google/protobuf/d3;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/protobuf/TextFormat$b;

    invoke-static {}, Lcom/google/protobuf/d3;->d()Lcom/google/protobuf/d3;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/protobuf/TextFormat$b;-><init>(ZLcom/google/protobuf/d3;)V

    sput-object v0, Lcom/google/protobuf/TextFormat$b;->c:Lcom/google/protobuf/TextFormat$b;

    return-void
.end method

.method private constructor <init>(ZLcom/google/protobuf/d3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/protobuf/TextFormat$b;->a:Z

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/TextFormat$b;->b:Lcom/google/protobuf/d3;

    return-void
.end method

.method static synthetic a()Lcom/google/protobuf/TextFormat$b;
    .locals 1

    sget-object v0, Lcom/google/protobuf/TextFormat$b;->c:Lcom/google/protobuf/TextFormat$b;

    return-object v0
.end method

.method private b(Lcom/google/protobuf/r1;Lcom/google/protobuf/TextFormat$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google.protobuf.Any"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/TextFormat$b;->e(Lcom/google/protobuf/r1;Lcom/google/protobuf/TextFormat$c;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/TextFormat$b;->h(Lcom/google/protobuf/r1;Lcom/google/protobuf/TextFormat$c;)V

    return-void
.end method

.method private e(Lcom/google/protobuf/r1;Lcom/google/protobuf/TextFormat$c;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getDescriptorForType()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/protobuf/Descriptors$b;->j(I)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v2

    const/4 v3, 0x2

    .line 3
    invoke-virtual {v0, v3}, Lcom/google/protobuf/Descriptors$b;->j(I)Lcom/google/protobuf/Descriptors$FieldDescriptor;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 4
    invoke-virtual {v2}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v4, v5, :cond_3

    if-eqz v0, :cond_3

    .line 5
    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v4

    sget-object v5, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-eq v4, v5, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {p1, v2}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    return v3

    .line 8
    :cond_1
    invoke-interface {p1, v0}, Lcom/google/protobuf/r1;->getField(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Ljava/lang/Object;

    move-result-object p1

    .line 9
    :try_start_0
    iget-object v0, p0, Lcom/google/protobuf/TextFormat$b;->b:Lcom/google/protobuf/d3;

    invoke-virtual {v0, v2}, Lcom/google/protobuf/d3;->c(Ljava/lang/String;)Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    if-nez v0, :cond_2

    return v3

    .line 10
    :cond_2
    invoke-static {v0}, Lcom/google/protobuf/x;->f(Lcom/google/protobuf/Descriptors$b;)Lcom/google/protobuf/x;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/x;->j()Lcom/google/protobuf/x$b;

    move-result-object v0

    .line 11
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-interface {v0, p1}, Lcom/google/protobuf/l1$a;->w0(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/l1$a;
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    const-string p1, "["

    .line 12
    invoke-virtual {p2, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {p2, v2}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    const-string p1, "] {"

    .line 14
    invoke-virtual {p2, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$c;->a()V

    .line 16
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$c;->b()V

    .line 17
    invoke-direct {p0, v0, p2}, Lcom/google/protobuf/TextFormat$b;->b(Lcom/google/protobuf/r1;Lcom/google/protobuf/TextFormat$c;)V

    .line 18
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$c;->c()V

    const-string p1, "}"

    .line 19
    invoke-virtual {p2, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$c;->a()V

    return v1

    :catch_0
    :cond_3
    :goto_0
    return v3
.end method

.method private f(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    new-instance v2, Lcom/google/protobuf/TextFormat$b$a;

    invoke-direct {v2, v1, p1}, Lcom/google/protobuf/TextFormat$b$a;-><init>(Ljava/lang/Object;Lcom/google/protobuf/Descriptors$FieldDescriptor;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/TextFormat$b$a;

    .line 7
    invoke-virtual {v0}, Lcom/google/protobuf/TextFormat$b$a;->c()Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/TextFormat$b;->i(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    check-cast p2, Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 10
    invoke-direct {p0, p1, v0, p3}, Lcom/google/protobuf/TextFormat$b;->i(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    goto :goto_2

    .line 11
    :cond_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$b;->i(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    :cond_3
    return-void
.end method

.method private g(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/protobuf/TextFormat$a;->b:[I

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "\""

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    .line 2
    :pswitch_0
    check-cast p2, Lcom/google/protobuf/l1;

    invoke-direct {p0, p2, p3}, Lcom/google/protobuf/TextFormat$b;->b(Lcom/google/protobuf/r1;Lcom/google/protobuf/TextFormat$c;)V

    goto/16 :goto_2

    .line 3
    :pswitch_1
    check-cast p2, Lcom/google/protobuf/Descriptors$e;

    invoke-virtual {p2}, Lcom/google/protobuf/Descriptors$e;->d()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 4
    :pswitch_2
    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 5
    instance-of p1, p2, Lcom/google/protobuf/ByteString;

    if-eqz p1, :cond_0

    .line 6
    check-cast p2, Lcom/google/protobuf/ByteString;

    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->d(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 7
    :cond_0
    check-cast p2, [B

    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->e([B)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 8
    :goto_0
    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 9
    :pswitch_3
    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 10
    iget-boolean p1, p0, Lcom/google/protobuf/TextFormat$b;->a:Z

    if-eqz p1, :cond_1

    check-cast p2, Ljava/lang/String;

    .line 11
    invoke-static {p2}, Lcom/google/protobuf/x2;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    check-cast p2, Ljava/lang/String;

    .line 12
    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "\n"

    const-string v1, "\\n"

    invoke-virtual {p1, p2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 13
    :goto_1
    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 15
    :pswitch_4
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    invoke-static {p1, p2}, Lcom/google/protobuf/TextFormat;->r(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 16
    :pswitch_5
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcom/google/protobuf/TextFormat;->q(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 17
    :pswitch_6
    check-cast p2, Ljava/lang/Double;

    invoke-virtual {p2}, Ljava/lang/Double;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 18
    :pswitch_7
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 19
    :pswitch_8
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 20
    :pswitch_9
    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 21
    :pswitch_a
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_9
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private h(Lcom/google/protobuf/r1;Lcom/google/protobuf/TextFormat$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getAllFields()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v2, v1, p2}, Lcom/google/protobuf/TextFormat$b;->f(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcom/google/protobuf/r1;->getUnknownFields()Lcom/google/protobuf/h3;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/google/protobuf/TextFormat$b;->n(Lcom/google/protobuf/h3;Lcom/google/protobuf/TextFormat$c;)V

    return-void
.end method

.method private i(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "["

    .line 2
    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->q()Lcom/google/protobuf/DescriptorProtos$MessageOptions;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/DescriptorProtos$MessageOptions;->getMessageSetWireFormat()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_0

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->B()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->r()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 7
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    :goto_0
    const-string v0, "]"

    .line 9
    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->x()Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/google/protobuf/Descriptors$FieldDescriptor$Type;

    if-ne v0, v1, :cond_2

    .line 11
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->v()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/protobuf/Descriptors$b;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 13
    :goto_1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v0, v1, :cond_3

    const-string v0, " {"

    .line 14
    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 15
    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$c;->a()V

    .line 16
    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$c;->b()V

    goto :goto_2

    :cond_3
    const-string v0, ": "

    .line 17
    invoke-virtual {p3, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 18
    :goto_2
    invoke-direct {p0, p1, p2, p3}, Lcom/google/protobuf/TextFormat$b;->g(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    .line 19
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object p1

    if-ne p1, v1, :cond_4

    .line 20
    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$c;->c()V

    const-string p1, "}"

    .line 21
    invoke-virtual {p3, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 22
    :cond_4
    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$c;->a()V

    return-void
.end method

.method private static l(IILjava/util/List;Lcom/google/protobuf/TextFormat$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/List<",
            "*>;",
            "Lcom/google/protobuf/TextFormat$c;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 2
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    const-string v1, ": "

    .line 3
    invoke-virtual {p3, v1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 4
    invoke-static {p1, v0, p3}, Lcom/google/protobuf/TextFormat$b;->m(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V

    .line 5
    invoke-virtual {p3}, Lcom/google/protobuf/TextFormat$c;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static m(ILjava/lang/Object;Lcom/google/protobuf/TextFormat$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/google/protobuf/WireFormat;->b(I)I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    const/4 v4, 0x2

    if-eq v0, v4, :cond_2

    const/4 v4, 0x3

    if-eq v0, v4, :cond_1

    const/4 v4, 0x5

    if-ne v0, v4, :cond_0

    new-array p0, v3, [Ljava/lang/Object;

    .line 2
    check-cast p1, Ljava/lang/Integer;

    aput-object p1, p0, v1

    const-string p1, "0x%08x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Bad tag: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    check-cast p1, Lcom/google/protobuf/h3;

    invoke-static {p1, p2}, Lcom/google/protobuf/TextFormat$b;->n(Lcom/google/protobuf/h3;Lcom/google/protobuf/TextFormat$c;)V

    goto :goto_0

    .line 5
    :cond_2
    :try_start_0
    move-object p0, p1

    check-cast p0, Lcom/google/protobuf/ByteString;

    invoke-static {p0}, Lcom/google/protobuf/h3;->k(Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/h3;

    move-result-object p0

    const-string v0, "{"

    .line 6
    invoke-virtual {p2, v0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$c;->a()V

    .line 8
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$c;->b()V

    .line 9
    invoke-static {p0, p2}, Lcom/google/protobuf/TextFormat$b;->n(Lcom/google/protobuf/h3;Lcom/google/protobuf/TextFormat$c;)V

    .line 10
    invoke-virtual {p2}, Lcom/google/protobuf/TextFormat$c;->c()V

    const-string p0, "}"

    .line 11
    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/google/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "\""

    .line 12
    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 13
    check-cast p1, Lcom/google/protobuf/ByteString;

    invoke-static {p1}, Lcom/google/protobuf/TextFormat;->d(Lcom/google/protobuf/ByteString;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    new-array p0, v3, [Ljava/lang/Object;

    .line 15
    check-cast p1, Ljava/lang/Long;

    aput-object p1, p0, v1

    const-string p1, "0x%016x"

    invoke-static {v2, p1, p0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 16
    :cond_4
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    invoke-static {p0, p1}, Lcom/google/protobuf/TextFormat;->r(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method private static n(Lcom/google/protobuf/h3;Lcom/google/protobuf/TextFormat$c;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/google/protobuf/h3;->b()Ljava/util/Map;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3$c;

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v2}, Lcom/google/protobuf/h3$c;->s()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/TextFormat$b;->l(IILjava/util/List;Lcom/google/protobuf/TextFormat$c;)V

    const/4 v3, 0x5

    .line 5
    invoke-virtual {v2}, Lcom/google/protobuf/h3$c;->l()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/TextFormat$b;->l(IILjava/util/List;Lcom/google/protobuf/TextFormat$c;)V

    const/4 v3, 0x1

    .line 6
    invoke-virtual {v2}, Lcom/google/protobuf/h3$c;->m()Ljava/util/List;

    move-result-object v4

    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/TextFormat$b;->l(IILjava/util/List;Lcom/google/protobuf/TextFormat$c;)V

    const/4 v3, 0x2

    .line 7
    invoke-virtual {v2}, Lcom/google/protobuf/h3$c;->p()Ljava/util/List;

    move-result-object v4

    .line 8
    invoke-static {v1, v3, v4, p1}, Lcom/google/protobuf/TextFormat$b;->l(IILjava/util/List;Lcom/google/protobuf/TextFormat$c;)V

    .line 9
    invoke-virtual {v2}, Lcom/google/protobuf/h3$c;->n()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/h3;

    .line 10
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    const-string v3, " {"

    .line 11
    invoke-virtual {p1, v3}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 12
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$c;->a()V

    .line 13
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$c;->b()V

    .line 14
    invoke-static {v2, p1}, Lcom/google/protobuf/TextFormat$b;->n(Lcom/google/protobuf/h3;Lcom/google/protobuf/TextFormat$c;)V

    .line 15
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$c;->c()V

    const-string v2, "}"

    .line 16
    invoke-virtual {p1, v2}, Lcom/google/protobuf/TextFormat$c;->d(Ljava/lang/CharSequence;)V

    .line 17
    invoke-virtual {p1}, Lcom/google/protobuf/TextFormat$c;->a()V

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public c(Lcom/google/protobuf/r1;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->a(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$c;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/TextFormat$b;->b(Lcom/google/protobuf/r1;Lcom/google/protobuf/TextFormat$c;)V

    return-void
.end method

.method public d(Lcom/google/protobuf/h3;Ljava/lang/Appendable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/google/protobuf/TextFormat;->a(Ljava/lang/Appendable;)Lcom/google/protobuf/TextFormat$c;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/google/protobuf/TextFormat$b;->n(Lcom/google/protobuf/h3;Lcom/google/protobuf/TextFormat$c;)V

    return-void
.end method

.method public j(Lcom/google/protobuf/r1;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/TextFormat$b;->c(Lcom/google/protobuf/r1;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public k(Lcom/google/protobuf/h3;)Ljava/lang/String;
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/TextFormat$b;->d(Lcom/google/protobuf/h3;Ljava/lang/Appendable;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
