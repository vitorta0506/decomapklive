.class final enum Lcom/google/re2j/l$b;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/re2j/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/re2j/l$b;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/google/re2j/l$b;

.field public static final enum b:Lcom/google/re2j/l$b;

.field public static final enum c:Lcom/google/re2j/l$b;

.field public static final enum d:Lcom/google/re2j/l$b;

.field public static final enum e:Lcom/google/re2j/l$b;

.field public static final enum f:Lcom/google/re2j/l$b;

.field public static final enum g:Lcom/google/re2j/l$b;

.field public static final enum h:Lcom/google/re2j/l$b;

.field public static final enum i:Lcom/google/re2j/l$b;

.field public static final enum j:Lcom/google/re2j/l$b;

.field public static final enum k:Lcom/google/re2j/l$b;

.field public static final enum l:Lcom/google/re2j/l$b;

.field public static final enum m:Lcom/google/re2j/l$b;

.field public static final enum n:Lcom/google/re2j/l$b;

.field public static final enum o:Lcom/google/re2j/l$b;

.field public static final enum p:Lcom/google/re2j/l$b;

.field public static final enum q:Lcom/google/re2j/l$b;

.field public static final enum r:Lcom/google/re2j/l$b;

.field public static final enum s:Lcom/google/re2j/l$b;

.field public static final enum t:Lcom/google/re2j/l$b;

.field public static final enum u:Lcom/google/re2j/l$b;

.field private static final synthetic v:[Lcom/google/re2j/l$b;


# direct methods
.method static constructor <clinit>()V
    .locals 24

    .line 1
    new-instance v0, Lcom/google/re2j/l$b;

    const-string v1, "NO_MATCH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/re2j/l$b;->a:Lcom/google/re2j/l$b;

    .line 2
    new-instance v1, Lcom/google/re2j/l$b;

    const-string v3, "EMPTY_MATCH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/google/re2j/l$b;->b:Lcom/google/re2j/l$b;

    .line 3
    new-instance v3, Lcom/google/re2j/l$b;

    const-string v5, "LITERAL"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/google/re2j/l$b;->c:Lcom/google/re2j/l$b;

    .line 4
    new-instance v5, Lcom/google/re2j/l$b;

    const-string v7, "CHAR_CLASS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/google/re2j/l$b;->d:Lcom/google/re2j/l$b;

    .line 5
    new-instance v7, Lcom/google/re2j/l$b;

    const-string v9, "ANY_CHAR_NOT_NL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/google/re2j/l$b;->e:Lcom/google/re2j/l$b;

    .line 6
    new-instance v9, Lcom/google/re2j/l$b;

    const-string v11, "ANY_CHAR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/google/re2j/l$b;->f:Lcom/google/re2j/l$b;

    .line 7
    new-instance v11, Lcom/google/re2j/l$b;

    const-string v13, "BEGIN_LINE"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/google/re2j/l$b;->g:Lcom/google/re2j/l$b;

    .line 8
    new-instance v13, Lcom/google/re2j/l$b;

    const-string v15, "END_LINE"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/google/re2j/l$b;->h:Lcom/google/re2j/l$b;

    .line 9
    new-instance v15, Lcom/google/re2j/l$b;

    const-string v14, "BEGIN_TEXT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lcom/google/re2j/l$b;->i:Lcom/google/re2j/l$b;

    .line 10
    new-instance v14, Lcom/google/re2j/l$b;

    const-string v12, "END_TEXT"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lcom/google/re2j/l$b;->j:Lcom/google/re2j/l$b;

    .line 11
    new-instance v12, Lcom/google/re2j/l$b;

    const-string v10, "WORD_BOUNDARY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/google/re2j/l$b;->k:Lcom/google/re2j/l$b;

    .line 12
    new-instance v10, Lcom/google/re2j/l$b;

    const-string v8, "NO_WORD_BOUNDARY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lcom/google/re2j/l$b;->l:Lcom/google/re2j/l$b;

    .line 13
    new-instance v8, Lcom/google/re2j/l$b;

    const-string v6, "CAPTURE"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/google/re2j/l$b;->m:Lcom/google/re2j/l$b;

    .line 14
    new-instance v6, Lcom/google/re2j/l$b;

    const-string v4, "STAR"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/re2j/l$b;->n:Lcom/google/re2j/l$b;

    .line 15
    new-instance v4, Lcom/google/re2j/l$b;

    const-string v2, "PLUS"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/re2j/l$b;->o:Lcom/google/re2j/l$b;

    .line 16
    new-instance v2, Lcom/google/re2j/l$b;

    const-string v6, "QUEST"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/re2j/l$b;->p:Lcom/google/re2j/l$b;

    .line 17
    new-instance v6, Lcom/google/re2j/l$b;

    const-string v4, "REPEAT"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/re2j/l$b;->q:Lcom/google/re2j/l$b;

    .line 18
    new-instance v4, Lcom/google/re2j/l$b;

    const-string v2, "CONCAT"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/re2j/l$b;->r:Lcom/google/re2j/l$b;

    .line 19
    new-instance v2, Lcom/google/re2j/l$b;

    const-string v6, "ALTERNATE"

    move-object/from16 v21, v4

    const/16 v4, 0x12

    invoke-direct {v2, v6, v4}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lcom/google/re2j/l$b;->s:Lcom/google/re2j/l$b;

    .line 20
    new-instance v6, Lcom/google/re2j/l$b;

    const-string v4, "LEFT_PAREN"

    move-object/from16 v22, v2

    const/16 v2, 0x13

    invoke-direct {v6, v4, v2}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/google/re2j/l$b;->t:Lcom/google/re2j/l$b;

    .line 21
    new-instance v4, Lcom/google/re2j/l$b;

    const-string v2, "VERTICAL_BAR"

    move-object/from16 v23, v6

    const/16 v6, 0x14

    invoke-direct {v4, v2, v6}, Lcom/google/re2j/l$b;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lcom/google/re2j/l$b;->u:Lcom/google/re2j/l$b;

    const/16 v2, 0x15

    new-array v2, v2, [Lcom/google/re2j/l$b;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    const/16 v0, 0x11

    aput-object v21, v2, v0

    const/16 v0, 0x12

    aput-object v22, v2, v0

    const/16 v0, 0x13

    aput-object v23, v2, v0

    aput-object v4, v2, v6

    .line 22
    sput-object v2, Lcom/google/re2j/l$b;->v:[Lcom/google/re2j/l$b;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/re2j/l$b;
    .locals 1

    const-class v0, Lcom/google/re2j/l$b;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/google/re2j/l$b;

    return-object p0
.end method

.method public static values()[Lcom/google/re2j/l$b;
    .locals 1

    sget-object v0, Lcom/google/re2j/l$b;->v:[Lcom/google/re2j/l$b;

    invoke-virtual {v0}, [Lcom/google/re2j/l$b;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/re2j/l$b;

    return-object v0
.end method


# virtual methods
.method a()Z
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sget-object v1, Lcom/google/re2j/l$b;->t:Lcom/google/re2j/l$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
