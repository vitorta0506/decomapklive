.class Lcom/google/re2j/l;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/re2j/l$b;
    }
.end annotation


# static fields
.field static final j:[Lcom/google/re2j/l;


# instance fields
.field a:Lcom/google/re2j/l$b;

.field b:I

.field c:[Lcom/google/re2j/l;

.field d:[I

.field e:I

.field f:I

.field g:I

.field h:Ljava/lang/String;

.field i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/re2j/l;

    sput-object v0, Lcom/google/re2j/l;->j:[Lcom/google/re2j/l;

    return-void
.end method

.method constructor <init>(Lcom/google/re2j/l$b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    return-void
.end method

.method constructor <init>(Lcom/google/re2j/l;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object v0, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    iput-object v0, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    .line 5
    iget v0, p1, Lcom/google/re2j/l;->b:I

    iput v0, p0, Lcom/google/re2j/l;->b:I

    .line 6
    iget-object v0, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    iput-object v0, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    .line 7
    iget-object v0, p1, Lcom/google/re2j/l;->d:[I

    iput-object v0, p0, Lcom/google/re2j/l;->d:[I

    .line 8
    iget v0, p1, Lcom/google/re2j/l;->e:I

    iput v0, p0, Lcom/google/re2j/l;->e:I

    .line 9
    iget v0, p1, Lcom/google/re2j/l;->f:I

    iput v0, p0, Lcom/google/re2j/l;->f:I

    .line 10
    iget v0, p1, Lcom/google/re2j/l;->g:I

    iput v0, p0, Lcom/google/re2j/l;->g:I

    .line 11
    iget-object v0, p1, Lcom/google/re2j/l;->h:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/re2j/l;->h:Ljava/lang/String;

    .line 12
    iget-object p1, p1, Lcom/google/re2j/l;->i:Ljava/util/Map;

    iput-object p1, p0, Lcom/google/re2j/l;->i:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/lang/StringBuilder;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/google/re2j/l$a;->a:[I

    iget-object v1, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v1, v0, v1

    const-string v2, "(?:"

    const/16 v3, 0x5e

    const/16 v4, 0x29

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v7, 0x1

    packed-switch v1, :pswitch_data_0

    .line 2
    iget-object v0, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 3
    :pswitch_0
    iget-object v0, p0, Lcom/google/re2j/l;->d:[I

    array-length v0, v0

    rem-int/2addr v0, v5

    if-eqz v0, :cond_0

    const-string v0, "[invalid char class]"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :cond_0
    const/16 v0, 0x5b

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 6
    iget-object v0, p0, Lcom/google/re2j/l;->d:[I

    array-length v1, v0

    if-nez v1, :cond_1

    const-string v0, "^\\x00-\\x{10FFFF}"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8
    :cond_1
    aget v1, v0, v6

    const/16 v2, 0x2d

    if-nez v1, :cond_3

    array-length v1, v0

    sub-int/2addr v1, v7

    aget v0, v0, v1

    const v1, 0x10ffff

    if-ne v0, v1, :cond_3

    .line 9
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/google/re2j/l;->d:[I

    array-length v3, v1

    sub-int/2addr v3, v7

    if-ge v0, v3, :cond_5

    .line 11
    aget v3, v1, v0

    add-int/2addr v3, v7

    add-int/lit8 v4, v0, 0x1

    .line 12
    aget v1, v1, v4

    sub-int/2addr v1, v7

    .line 13
    invoke-static {p1, v3}, Lcom/google/re2j/l;->c(Ljava/lang/StringBuilder;I)V

    .line 14
    invoke-static {p1, v3}, Lcom/google/re2j/p;->b(Ljava/lang/StringBuilder;I)V

    if-eq v3, v1, :cond_2

    .line 15
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {p1, v1}, Lcom/google/re2j/l;->c(Ljava/lang/StringBuilder;I)V

    .line 17
    invoke-static {p1, v1}, Lcom/google/re2j/p;->b(Ljava/lang/StringBuilder;I)V

    :cond_2
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 18
    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/google/re2j/l;->d:[I

    array-length v1, v0

    if-ge v6, v1, :cond_5

    .line 19
    aget v1, v0, v6

    add-int/lit8 v3, v6, 0x1

    .line 20
    aget v0, v0, v3

    .line 21
    invoke-static {p1, v1}, Lcom/google/re2j/l;->c(Ljava/lang/StringBuilder;I)V

    .line 22
    invoke-static {p1, v1}, Lcom/google/re2j/p;->b(Ljava/lang/StringBuilder;I)V

    if-eq v1, v0, :cond_4

    .line 23
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 24
    invoke-static {p1, v0}, Lcom/google/re2j/l;->c(Ljava/lang/StringBuilder;I)V

    .line 25
    invoke-static {p1, v0}, Lcom/google/re2j/p;->b(Ljava/lang/StringBuilder;I)V

    :cond_4
    add-int/lit8 v6, v6, 0x2

    goto :goto_1

    :cond_5
    :goto_2
    const/16 v0, 0x5d

    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_1
    const-string v0, "\\B"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_2
    const-string v0, "\\b"

    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_3
    const/16 v0, 0x24

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 30
    :pswitch_4
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 31
    :pswitch_5
    iget v0, p0, Lcom/google/re2j/l;->b:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_6

    const-string v0, "(?-m:$)"

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :cond_6
    const-string v0, "\\z"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_6
    const-string v0, "\\A"

    .line 34
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 35
    :pswitch_7
    iget-object v0, p0, Lcom/google/re2j/l;->h:Ljava/lang/String;

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    goto :goto_3

    :cond_7
    const-string v0, "(?P<"

    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    iget-object v0, p0, Lcom/google/re2j/l;->h:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ">"

    .line 38
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_8
    :goto_3
    const/16 v0, 0x28

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 40
    :goto_4
    iget-object v0, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v1, v0, v6

    iget-object v1, v1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v2, Lcom/google/re2j/l$b;->b:Lcom/google/re2j/l$b;

    if-eq v1, v2, :cond_9

    .line 41
    aget-object v0, v0, v6

    invoke-direct {v0, p1}, Lcom/google/re2j/l;->a(Ljava/lang/StringBuilder;)V

    .line 42
    :cond_9
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_8
    const-string v0, "(?s:.)"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_9
    const-string v0, "(?-s:.)"

    .line 44
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 45
    :pswitch_a
    iget v0, p0, Lcom/google/re2j/l;->b:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_a

    const-string v0, "(?i:"

    .line 46
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    :cond_a
    iget-object v0, p0, Lcom/google/re2j/l;->d:[I

    array-length v1, v0

    :goto_5
    if-ge v6, v1, :cond_b

    aget v2, v0, v6

    .line 48
    invoke-static {p1, v2}, Lcom/google/re2j/p;->b(Ljava/lang/StringBuilder;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 49
    :cond_b
    iget v0, p0, Lcom/google/re2j/l;->b:I

    and-int/2addr v0, v7

    if-eqz v0, :cond_14

    .line 50
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 51
    :pswitch_b
    iget-object v0, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v1, v0

    const-string v2, ""

    :goto_6
    if-ge v6, v1, :cond_14

    aget-object v3, v0, v6

    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    invoke-direct {v3, p1}, Lcom/google/re2j/l;->a(Ljava/lang/StringBuilder;)V

    add-int/lit8 v6, v6, 0x1

    const-string v2, "|"

    goto :goto_6

    .line 54
    :pswitch_c
    iget-object v0, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v1, v0

    :goto_7
    if-ge v6, v1, :cond_14

    aget-object v3, v0, v6

    .line 55
    iget-object v5, v3, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v7, Lcom/google/re2j/l$b;->s:Lcom/google/re2j/l$b;

    if-ne v5, v7, :cond_c

    .line 56
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {v3, p1}, Lcom/google/re2j/l;->a(Ljava/lang/StringBuilder;)V

    .line 58
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_8

    .line 59
    :cond_c
    invoke-direct {v3, p1}, Lcom/google/re2j/l;->a(Ljava/lang/StringBuilder;)V

    :goto_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_7

    :pswitch_d
    const-string v0, "(?:)"

    .line 60
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    :pswitch_e
    const-string v0, "[^\\x00-\\x{10FFFF}]"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_c

    .line 62
    :pswitch_f
    iget-object v1, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v1, v1, v6

    .line 63
    iget-object v3, v1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    sget-object v6, Lcom/google/re2j/l$b;->m:Lcom/google/re2j/l$b;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    if-gt v3, v6, :cond_e

    iget-object v3, v1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v6, Lcom/google/re2j/l$b;->c:Lcom/google/re2j/l$b;

    if-ne v3, v6, :cond_d

    iget-object v3, v1, Lcom/google/re2j/l;->d:[I

    array-length v3, v3

    if-le v3, v7, :cond_d

    goto :goto_9

    .line 64
    :cond_d
    invoke-direct {v1, p1}, Lcom/google/re2j/l;->a(Ljava/lang/StringBuilder;)V

    goto :goto_a

    .line 65
    :cond_e
    :goto_9
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    :try_start_0
    invoke-direct {v1, p1}, Lcom/google/re2j/l;->a(Ljava/lang/StringBuilder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 68
    :goto_a
    iget-object v1, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/16 v1, 0x3f

    if-eq v0, v7, :cond_13

    if-eq v0, v5, :cond_12

    const/4 v2, 0x3

    if-eq v0, v2, :cond_11

    const/4 v2, 0x4

    if-eq v0, v2, :cond_f

    goto :goto_b

    :cond_f
    const/16 v0, 0x7b

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/google/re2j/l;->e:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    iget v0, p0, Lcom/google/re2j/l;->e:I

    iget v2, p0, Lcom/google/re2j/l;->f:I

    if-eq v0, v2, :cond_10

    const/16 v0, 0x2c

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 72
    iget v0, p0, Lcom/google/re2j/l;->f:I

    if-ltz v0, :cond_10

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_10
    const/16 v0, 0x7d

    .line 74
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    .line 75
    :cond_11
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_12
    const/16 v0, 0x2b

    .line 76
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_13
    const/16 v0, 0x2a

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 78
    :goto_b
    iget v0, p0, Lcom/google/re2j/l;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_14

    .line 79
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_14
    :goto_c
    return-void

    :catchall_0
    move-exception p1

    .line 80
    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_f
        :pswitch_f
        :pswitch_f
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

.method private static c(Ljava/lang/StringBuilder;I)V
    .locals 1

    const/16 v0, 0x2d

    if-ne p1, v0, :cond_0

    const/16 p1, 0x5c

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void
.end method


# virtual methods
.method b()I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    sget-object v1, Lcom/google/re2j/l$b;->m:Lcom/google/re2j/l$b;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcom/google/re2j/l;->g:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    if-eqz v1, :cond_2

    .line 4
    array-length v3, v1

    :goto_1
    if-ge v2, v3, :cond_2

    aget-object v4, v1, v2

    .line 5
    invoke-virtual {v4}, Lcom/google/re2j/l;->b()I

    move-result v4

    if-ge v0, v4, :cond_1

    move v0, v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    return v0
.end method

.method d()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/google/re2j/l;->b:I

    .line 2
    sget-object v1, Lcom/google/re2j/l;->j:[Lcom/google/re2j/l;

    iput-object v1, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/google/re2j/l;->d:[I

    .line 4
    iput v0, p0, Lcom/google/re2j/l;->f:I

    iput v0, p0, Lcom/google/re2j/l;->e:I

    iput v0, p0, Lcom/google/re2j/l;->g:I

    .line 5
    iput-object v1, p0, Lcom/google/re2j/l;->h:Ljava/lang/String;

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Lcom/google/re2j/l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    check-cast p1, Lcom/google/re2j/l;

    .line 3
    iget-object v0, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    iget-object v2, p1, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    if-eq v0, v2, :cond_1

    return v1

    .line 4
    :cond_1
    sget-object v2, Lcom/google/re2j/l$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_d

    const/4 v3, 0x2

    if-eq v0, v3, :cond_d

    const/4 v3, 0x3

    if-eq v0, v3, :cond_d

    const/4 v3, 0x4

    if-eq v0, v3, :cond_b

    const/4 v3, 0x7

    if-eq v0, v3, :cond_8

    const/16 v3, 0x8

    if-eq v0, v3, :cond_8

    const/16 v3, 0x9

    if-eq v0, v3, :cond_7

    const/16 v3, 0xc

    if-eq v0, v3, :cond_3

    const/16 v3, 0xe

    if-eq v0, v3, :cond_2

    const/16 v3, 0x13

    if-eq v0, v3, :cond_7

    goto/16 :goto_2

    .line 5
    :cond_2
    iget v0, p0, Lcom/google/re2j/l;->b:I

    and-int/lit16 v0, v0, 0x100

    iget p1, p1, Lcom/google/re2j/l;->b:I

    and-int/lit16 p1, p1, 0x100

    if-eq v0, p1, :cond_e

    return v1

    .line 6
    :cond_3
    iget v0, p0, Lcom/google/re2j/l;->g:I

    iget v3, p1, Lcom/google/re2j/l;->g:I

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/google/re2j/l;->h:Ljava/lang/String;

    if-nez v0, :cond_4

    iget-object v0, p1, Lcom/google/re2j/l;->h:Ljava/lang/String;

    if-eqz v0, :cond_5

    goto :goto_0

    :cond_4
    iget-object v3, p1, Lcom/google/re2j/l;->h:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v0, v0, v1

    iget-object p1, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object p1, p1, v1

    .line 8
    invoke-virtual {v0, p1}, Lcom/google/re2j/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    :cond_6
    :goto_0
    return v1

    .line 9
    :cond_7
    iget-object v0, p0, Lcom/google/re2j/l;->d:[I

    iget-object p1, p1, Lcom/google/re2j/l;->d:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result p1

    if-nez p1, :cond_e

    return v1

    .line 10
    :cond_8
    iget-object v0, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v0, v0

    iget-object v3, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v3, v3

    if-eq v0, v3, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x0

    .line 11
    :goto_1
    iget-object v3, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    array-length v4, v3

    if-ge v0, v4, :cond_e

    .line 12
    aget-object v3, v3, v0

    iget-object v4, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v4, v4, v0

    invoke-virtual {v3, v4}, Lcom/google/re2j/l;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_a

    return v1

    :cond_a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 13
    :cond_b
    iget v0, p0, Lcom/google/re2j/l;->b:I

    and-int/lit8 v0, v0, 0x20

    iget v3, p1, Lcom/google/re2j/l;->b:I

    and-int/lit8 v3, v3, 0x20

    if-ne v0, v3, :cond_c

    iget v0, p0, Lcom/google/re2j/l;->e:I

    iget v3, p1, Lcom/google/re2j/l;->e:I

    if-ne v0, v3, :cond_c

    iget v0, p0, Lcom/google/re2j/l;->f:I

    iget v3, p1, Lcom/google/re2j/l;->f:I

    if-ne v0, v3, :cond_c

    iget-object v0, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v0, v0, v1

    iget-object p1, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object p1, p1, v1

    .line 14
    invoke-virtual {v0, p1}, Lcom/google/re2j/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    :cond_c
    return v1

    .line 15
    :cond_d
    iget v0, p0, Lcom/google/re2j/l;->b:I

    and-int/lit8 v0, v0, 0x20

    iget v3, p1, Lcom/google/re2j/l;->b:I

    and-int/lit8 v3, v3, 0x20

    if-ne v0, v3, :cond_f

    iget-object v0, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v0, v0, v1

    iget-object p1, p1, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object p1, p1, v1

    .line 16
    invoke-virtual {v0, p1}, Lcom/google/re2j/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_e

    goto :goto_3

    :cond_e
    :goto_2
    return v2

    :cond_f
    :goto_3
    return v1
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    .line 2
    sget-object v1, Lcom/google/re2j/l$a;->a:[I

    iget-object v2, p0, Lcom/google/re2j/l;->a:Lcom/google/re2j/l$b;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_6

    const/4 v2, 0x2

    if-eq v1, v2, :cond_6

    const/4 v2, 0x3

    if-eq v1, v2, :cond_6

    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    const/4 v2, 0x7

    if-eq v1, v2, :cond_4

    const/16 v2, 0x8

    if-eq v1, v2, :cond_4

    const/16 v2, 0x9

    if-eq v1, v2, :cond_3

    const/16 v2, 0xc

    if-eq v1, v2, :cond_1

    const/16 v2, 0xe

    if-eq v1, v2, :cond_0

    const/16 v2, 0x13

    if-eq v1, v2, :cond_3

    goto :goto_4

    .line 3
    :cond_0
    iget v1, p0, Lcom/google/re2j/l;->b:I

    and-int/lit16 v1, v1, 0x100

    goto :goto_1

    .line 4
    :cond_1
    iget v1, p0, Lcom/google/re2j/l;->g:I

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/re2j/l;->h:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/re2j/l;->hashCode()I

    move-result v2

    goto :goto_2

    .line 5
    :cond_3
    iget-object v1, p0, Lcom/google/re2j/l;->d:[I

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([I)I

    move-result v1

    goto :goto_1

    .line 6
    :cond_4
    iget-object v1, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    invoke-static {v1}, Ljava/util/Arrays;->deepHashCode([Ljava/lang/Object;)I

    move-result v1

    :goto_1
    mul-int/lit8 v1, v1, 0x1f

    goto :goto_3

    .line 7
    :cond_5
    iget v1, p0, Lcom/google/re2j/l;->e:I

    mul-int/lit8 v1, v1, 0x1f

    iget v2, p0, Lcom/google/re2j/l;->f:I

    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/re2j/l;->hashCode()I

    move-result v2

    goto :goto_2

    .line 8
    :cond_6
    iget v1, p0, Lcom/google/re2j/l;->b:I

    and-int/lit8 v1, v1, 0x20

    mul-int/lit8 v1, v1, 0x1f

    iget-object v2, p0, Lcom/google/re2j/l;->c:[Lcom/google/re2j/l;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Lcom/google/re2j/l;->hashCode()I

    move-result v2

    :goto_2
    mul-int/lit8 v2, v2, 0x1f

    add-int/2addr v1, v2

    :goto_3
    add-int/2addr v0, v1

    :goto_4
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-direct {p0, v0}, Lcom/google/re2j/l;->a(Ljava/lang/StringBuilder;)V

    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
