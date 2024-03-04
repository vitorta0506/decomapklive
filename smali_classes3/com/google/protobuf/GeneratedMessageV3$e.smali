.class public final Lcom/google/protobuf/GeneratedMessageV3$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/GeneratedMessageV3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/GeneratedMessageV3$e$f;,
        Lcom/google/protobuf/GeneratedMessageV3$e$i;,
        Lcom/google/protobuf/GeneratedMessageV3$e$j;,
        Lcom/google/protobuf/GeneratedMessageV3$e$d;,
        Lcom/google/protobuf/GeneratedMessageV3$e$g;,
        Lcom/google/protobuf/GeneratedMessageV3$e$b;,
        Lcom/google/protobuf/GeneratedMessageV3$e$e;,
        Lcom/google/protobuf/GeneratedMessageV3$e$h;,
        Lcom/google/protobuf/GeneratedMessageV3$e$c;,
        Lcom/google/protobuf/GeneratedMessageV3$e$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/protobuf/Descriptors$b;

.field private final b:[Lcom/google/protobuf/GeneratedMessageV3$e$a;

.field private c:[Ljava/lang/String;

.field private final d:[Lcom/google/protobuf/GeneratedMessageV3$e$c;

.field private volatile e:Z


# direct methods
.method public constructor <init>(Lcom/google/protobuf/Descriptors$b;[Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->a:Lcom/google/protobuf/Descriptors$b;

    .line 3
    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->c:[Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    new-array p2, p2, [Lcom/google/protobuf/GeneratedMessageV3$e$a;

    iput-object p2, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->b:[Lcom/google/protobuf/GeneratedMessageV3$e$a;

    .line 5
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$b;->p()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/google/protobuf/GeneratedMessageV3$e$c;

    iput-object p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->d:[Lcom/google/protobuf/GeneratedMessageV3$e$c;

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/google/protobuf/GeneratedMessageV3$e;)Lcom/google/protobuf/Descriptors$b;
    .locals 0

    iget-object p0, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->a:Lcom/google/protobuf/Descriptors$b;

    return-object p0
.end method

.method static synthetic b(Lcom/google/protobuf/GeneratedMessageV3$e;Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/GeneratedMessageV3$e$c;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e;->f(Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/GeneratedMessageV3$e$c;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcom/google/protobuf/GeneratedMessageV3$e;Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$e$a;
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageV3$e;->e(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$e$a;

    move-result-object p0

    return-object p0
.end method

.method private e(Lcom/google/protobuf/Descriptors$FieldDescriptor;)Lcom/google/protobuf/GeneratedMessageV3$e$a;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->o()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->a:Lcom/google/protobuf/Descriptors$b;

    if-ne v0, v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->z()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->b:[Lcom/google/protobuf/GeneratedMessageV3$e$a;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->s()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This type does not have extensions."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FieldDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private f(Lcom/google/protobuf/Descriptors$i;)Lcom/google/protobuf/GeneratedMessageV3$e$c;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$i;->k()Lcom/google/protobuf/Descriptors$b;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->a:Lcom/google/protobuf/Descriptors$b;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->d:[Lcom/google/protobuf/GeneratedMessageV3$e$c;

    invoke-virtual {p1}, Lcom/google/protobuf/Descriptors$i;->o()I

    move-result p1

    aget-object p1, v0, p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "OneofDescriptor does not match message type."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public d(Ljava/lang/Class;Ljava/lang/Class;)Lcom/google/protobuf/GeneratedMessageV3$e;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessageV3;",
            ">;",
            "Ljava/lang/Class<",
            "+",
            "Lcom/google/protobuf/GeneratedMessageV3$b;",
            ">;)",
            "Lcom/google/protobuf/GeneratedMessageV3$e;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->e:Z

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->e:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-object p0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->b:[Lcom/google/protobuf/GeneratedMessageV3$e$a;

    array-length v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_a

    .line 5
    iget-object v4, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->a:Lcom/google/protobuf/Descriptors$b;

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$b;->m()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/google/protobuf/Descriptors$FieldDescriptor;

    .line 6
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m()Lcom/google/protobuf/Descriptors$i;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 7
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->c:[Ljava/lang/String;

    .line 8
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->m()Lcom/google/protobuf/Descriptors$i;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/protobuf/Descriptors$i;->o()I

    move-result v4

    add-int/2addr v4, v0

    aget-object v3, v3, v4

    :cond_2
    move-object v10, v3

    .line 9
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->isRepeated()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 10
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_4

    .line 11
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->A()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 12
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->b:[Lcom/google/protobuf/GeneratedMessageV3$e$a;

    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e$b;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$e$b;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    .line 13
    :cond_3
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->b:[Lcom/google/protobuf/GeneratedMessageV3$e$a;

    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e$f;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$e$f;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    .line 14
    :cond_4
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_5

    .line 15
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->b:[Lcom/google/protobuf/GeneratedMessageV3$e$a;

    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e$d;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$e$d;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto/16 :goto_1

    .line 16
    :cond_5
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->b:[Lcom/google/protobuf/GeneratedMessageV3$e$a;

    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e$e;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->c:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-direct {v4, v6, v5, p1, p2}, Lcom/google/protobuf/GeneratedMessageV3$e$e;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v4, v3, v2

    goto :goto_1

    .line 17
    :cond_6
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_7

    .line 18
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->b:[Lcom/google/protobuf/GeneratedMessageV3$e$a;

    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e$i;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/GeneratedMessageV3$e$i;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    .line 19
    :cond_7
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_8

    .line 20
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->b:[Lcom/google/protobuf/GeneratedMessageV3$e$a;

    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e$g;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/GeneratedMessageV3$e$g;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    .line 21
    :cond_8
    invoke-virtual {v6}, Lcom/google/protobuf/Descriptors$FieldDescriptor;->t()Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-result-object v3

    sget-object v4, Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/google/protobuf/Descriptors$FieldDescriptor$JavaType;

    if-ne v3, v4, :cond_9

    .line 22
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->b:[Lcom/google/protobuf/GeneratedMessageV3$e$a;

    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e$j;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/GeneratedMessageV3$e$j;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    goto :goto_1

    .line 23
    :cond_9
    iget-object v3, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->b:[Lcom/google/protobuf/GeneratedMessageV3$e$a;

    new-instance v4, Lcom/google/protobuf/GeneratedMessageV3$e$h;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->c:[Ljava/lang/String;

    aget-object v7, v5, v2

    move-object v5, v4

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v5 .. v10}, Lcom/google/protobuf/GeneratedMessageV3$e$h;-><init>(Lcom/google/protobuf/Descriptors$FieldDescriptor;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 24
    :cond_a
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->d:[Lcom/google/protobuf/GeneratedMessageV3$e$c;

    array-length v2, v2

    :goto_2
    if-ge v1, v2, :cond_b

    .line 25
    iget-object v10, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->d:[Lcom/google/protobuf/GeneratedMessageV3$e$c;

    new-instance v11, Lcom/google/protobuf/GeneratedMessageV3$e$c;

    iget-object v5, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->a:Lcom/google/protobuf/Descriptors$b;

    iget-object v4, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->c:[Ljava/lang/String;

    add-int v6, v1, v0

    aget-object v7, v4, v6

    move-object v4, v11

    move v6, v1

    move-object v8, p1

    move-object v9, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/GeneratedMessageV3$e$c;-><init>(Lcom/google/protobuf/Descriptors$b;ILjava/lang/String;Ljava/lang/Class;Ljava/lang/Class;)V

    aput-object v11, v10, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_b
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->e:Z

    .line 27
    iput-object v3, p0, Lcom/google/protobuf/GeneratedMessageV3$e;->c:[Ljava/lang/String;

    .line 28
    monitor-exit p0

    return-object p0

    :catchall_0
    move-exception p1

    .line 29
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
