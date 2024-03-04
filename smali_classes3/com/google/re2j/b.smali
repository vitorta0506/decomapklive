.class Lcom/google/re2j/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:[I

.field private static final d:[I

.field private static final e:[I

.field static final f:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/re2j/b;",
            ">;"
        }
    .end annotation
.end field

.field private static final g:[I

.field private static final h:[I

.field private static final i:[I

.field private static final j:[I

.field private static final k:[I

.field private static final l:[I

.field private static final m:[I

.field private static final n:[I

.field private static final o:[I

.field private static final p:[I

.field private static final q:[I

.field private static final r:[I

.field private static final s:[I

.field private static final t:[I

.field static final u:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/google/re2j/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:I

.field final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 17

    const/4 v0, 0x2

    new-array v1, v0, [I

    .line 1
    fill-array-data v1, :array_0

    sput-object v1, Lcom/google/re2j/b;->c:[I

    const/4 v2, 0x6

    new-array v3, v2, [I

    .line 2
    fill-array-data v3, :array_1

    sput-object v3, Lcom/google/re2j/b;->d:[I

    const/16 v4, 0x8

    new-array v5, v4, [I

    .line 3
    fill-array-data v5, :array_2

    sput-object v5, Lcom/google/re2j/b;->e:[I

    .line 4
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    sput-object v6, Lcom/google/re2j/b;->f:Ljava/util/HashMap;

    .line 5
    new-instance v7, Lcom/google/re2j/b;

    const/4 v8, 0x1

    invoke-direct {v7, v8, v1}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v9, "\\d"

    invoke-virtual {v6, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v7, Lcom/google/re2j/b;

    const/4 v9, -0x1

    invoke-direct {v7, v9, v1}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v1, "\\D"

    invoke-virtual {v6, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v3}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v7, "\\s"

    invoke-virtual {v6, v7, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v9, v3}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v3, "\\S"

    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v5}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v3, "\\w"

    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v9, v5}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v3, "\\W"

    invoke-virtual {v6, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-array v1, v2, [I

    .line 11
    fill-array-data v1, :array_3

    sput-object v1, Lcom/google/re2j/b;->g:[I

    const/4 v3, 0x4

    new-array v5, v3, [I

    .line 12
    fill-array-data v5, :array_4

    sput-object v5, Lcom/google/re2j/b;->h:[I

    new-array v6, v0, [I

    .line 13
    fill-array-data v6, :array_5

    sput-object v6, Lcom/google/re2j/b;->i:[I

    new-array v7, v3, [I

    .line 14
    fill-array-data v7, :array_6

    sput-object v7, Lcom/google/re2j/b;->j:[I

    new-array v10, v3, [I

    .line 15
    fill-array-data v10, :array_7

    sput-object v10, Lcom/google/re2j/b;->k:[I

    new-array v11, v0, [I

    .line 16
    fill-array-data v11, :array_8

    sput-object v11, Lcom/google/re2j/b;->l:[I

    new-array v12, v0, [I

    .line 17
    fill-array-data v12, :array_9

    sput-object v12, Lcom/google/re2j/b;->m:[I

    new-array v13, v0, [I

    .line 18
    fill-array-data v13, :array_a

    sput-object v13, Lcom/google/re2j/b;->n:[I

    new-array v14, v0, [I

    .line 19
    fill-array-data v14, :array_b

    sput-object v14, Lcom/google/re2j/b;->o:[I

    new-array v15, v4, [I

    .line 20
    fill-array-data v15, :array_c

    sput-object v15, Lcom/google/re2j/b;->p:[I

    new-array v3, v3, [I

    .line 21
    fill-array-data v3, :array_d

    sput-object v3, Lcom/google/re2j/b;->q:[I

    new-array v0, v0, [I

    .line 22
    fill-array-data v0, :array_e

    sput-object v0, Lcom/google/re2j/b;->r:[I

    new-array v4, v4, [I

    .line 23
    fill-array-data v4, :array_f

    sput-object v4, Lcom/google/re2j/b;->s:[I

    new-array v2, v2, [I

    .line 24
    fill-array-data v2, :array_10

    sput-object v2, Lcom/google/re2j/b;->t:[I

    .line 25
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    sput-object v9, Lcom/google/re2j/b;->u:Ljava/util/HashMap;

    move-object/from16 v16, v2

    .line 26
    new-instance v2, Lcom/google/re2j/b;

    invoke-direct {v2, v8, v1}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v8, "[:alnum:]"

    invoke-virtual {v9, v8, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    new-instance v2, Lcom/google/re2j/b;

    const/4 v8, -0x1

    invoke-direct {v2, v8, v1}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v1, "[:^alnum:]"

    invoke-virtual {v9, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    new-instance v1, Lcom/google/re2j/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v5}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v2, "[:alpha:]"

    invoke-virtual {v9, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v5}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v2, "[:^alpha:]"

    invoke-virtual {v9, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    new-instance v1, Lcom/google/re2j/b;

    const/4 v2, 0x1

    invoke-direct {v1, v2, v6}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:ascii:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v6}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:^ascii:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v2, v7}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:blank:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v7}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:^blank:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v2, v10}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:cntrl:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v10}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:^cntrl:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v2, v11}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:digit:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v11}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:^digit:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v2, v12}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:graph:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v12}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:^graph:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v2, v13}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:lower:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v13}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:^lower:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v2, v14}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:print:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v14}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:^print:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v2, v15}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:punct:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v15}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:^punct:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v2, v3}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v5, "[:space:]"

    invoke-virtual {v9, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v3}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v3, "[:^space:]"

    invoke-virtual {v9, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v2, v0}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v3, "[:upper:]"

    invoke-virtual {v9, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    new-instance v1, Lcom/google/re2j/b;

    invoke-direct {v1, v8, v0}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v0, "[:^upper:]"

    invoke-virtual {v9, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    new-instance v0, Lcom/google/re2j/b;

    invoke-direct {v0, v2, v4}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v1, "[:word:]"

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    new-instance v0, Lcom/google/re2j/b;

    invoke-direct {v0, v8, v4}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v1, "[:^word:]"

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    new-instance v0, Lcom/google/re2j/b;

    move-object/from16 v1, v16

    invoke-direct {v0, v2, v1}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v2, "[:xdigit:]"

    invoke-virtual {v9, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Lcom/google/re2j/b;

    invoke-direct {v0, v8, v1}, Lcom/google/re2j/b;-><init>(I[I)V

    const-string v1, "[:^xdigit:]"

    invoke-virtual {v9, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :array_0
    .array-data 4
        0x30
        0x39
    .end array-data

    :array_1
    .array-data 4
        0x9
        0xa
        0xc
        0xd
        0x20
        0x20
    .end array-data

    :array_2
    .array-data 4
        0x30
        0x39
        0x41
        0x5a
        0x5f
        0x5f
        0x61
        0x7a
    .end array-data

    :array_3
    .array-data 4
        0x30
        0x39
        0x41
        0x5a
        0x61
        0x7a
    .end array-data

    :array_4
    .array-data 4
        0x41
        0x5a
        0x61
        0x7a
    .end array-data

    :array_5
    .array-data 4
        0x0
        0x7f
    .end array-data

    :array_6
    .array-data 4
        0x9
        0x9
        0x20
        0x20
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1f
        0x7f
        0x7f
    .end array-data

    :array_8
    .array-data 4
        0x30
        0x39
    .end array-data

    :array_9
    .array-data 4
        0x21
        0x7e
    .end array-data

    :array_a
    .array-data 4
        0x61
        0x7a
    .end array-data

    :array_b
    .array-data 4
        0x20
        0x7e
    .end array-data

    :array_c
    .array-data 4
        0x21
        0x2f
        0x3a
        0x40
        0x5b
        0x60
        0x7b
        0x7e
    .end array-data

    :array_d
    .array-data 4
        0x9
        0xd
        0x20
        0x20
    .end array-data

    :array_e
    .array-data 4
        0x41
        0x5a
    .end array-data

    :array_f
    .array-data 4
        0x30
        0x39
        0x41
        0x5a
        0x5f
        0x5f
        0x61
        0x7a
    .end array-data

    :array_10
    .array-data 4
        0x30
        0x39
        0x41
        0x46
        0x61
        0x66
    .end array-data
.end method

.method private constructor <init>(I[I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/re2j/b;->a:I

    .line 3
    iput-object p2, p0, Lcom/google/re2j/b;->b:[I

    return-void
.end method
