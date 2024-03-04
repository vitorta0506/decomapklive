.class public final Lj3/l$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj3/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:J

.field private c:I

.field private d:[B
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private i:I

.field private j:Ljava/lang/Object;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lj3/l$b;->c:I

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lj3/l$b;->e:Ljava/util/Map;

    const-wide/16 v0, -0x1

    .line 5
    iput-wide v0, p0, Lj3/l$b;->g:J

    return-void
.end method

.method private constructor <init>(Lj3/l;)V
    .locals 2

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iget-object v0, p1, Lj3/l;->a:Landroid/net/Uri;

    iput-object v0, p0, Lj3/l$b;->a:Landroid/net/Uri;

    .line 8
    iget-wide v0, p1, Lj3/l;->b:J

    iput-wide v0, p0, Lj3/l$b;->b:J

    .line 9
    iget v0, p1, Lj3/l;->c:I

    iput v0, p0, Lj3/l$b;->c:I

    .line 10
    iget-object v0, p1, Lj3/l;->d:[B

    iput-object v0, p0, Lj3/l$b;->d:[B

    .line 11
    iget-object v0, p1, Lj3/l;->e:Ljava/util/Map;

    iput-object v0, p0, Lj3/l$b;->e:Ljava/util/Map;

    .line 12
    iget-wide v0, p1, Lj3/l;->g:J

    iput-wide v0, p0, Lj3/l$b;->f:J

    .line 13
    iget-wide v0, p1, Lj3/l;->h:J

    iput-wide v0, p0, Lj3/l$b;->g:J

    .line 14
    iget-object v0, p1, Lj3/l;->i:Ljava/lang/String;

    iput-object v0, p0, Lj3/l$b;->h:Ljava/lang/String;

    .line 15
    iget v0, p1, Lj3/l;->j:I

    iput v0, p0, Lj3/l$b;->i:I

    .line 16
    iget-object p1, p1, Lj3/l;->k:Ljava/lang/Object;

    iput-object p1, p0, Lj3/l$b;->j:Ljava/lang/Object;

    return-void
.end method

.method synthetic constructor <init>(Lj3/l;Lj3/l$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lj3/l$b;-><init>(Lj3/l;)V

    return-void
.end method


# virtual methods
.method public a()Lj3/l;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lj3/l$b;->a:Landroid/net/Uri;

    const-string v2, "The uri must be set."

    invoke-static {v1, v2}, Lcom/google/android/exoplayer2/util/a;->i(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v1, Lj3/l;

    iget-object v4, v0, Lj3/l$b;->a:Landroid/net/Uri;

    iget-wide v5, v0, Lj3/l$b;->b:J

    iget v7, v0, Lj3/l$b;->c:I

    iget-object v8, v0, Lj3/l$b;->d:[B

    iget-object v9, v0, Lj3/l$b;->e:Ljava/util/Map;

    iget-wide v10, v0, Lj3/l$b;->f:J

    iget-wide v12, v0, Lj3/l$b;->g:J

    iget-object v14, v0, Lj3/l$b;->h:Ljava/lang/String;

    iget v15, v0, Lj3/l$b;->i:I

    iget-object v2, v0, Lj3/l$b;->j:Ljava/lang/Object;

    const/16 v17, 0x0

    move-object v3, v1

    move-object/from16 v16, v2

    invoke-direct/range {v3 .. v17}, Lj3/l;-><init>(Landroid/net/Uri;JI[BLjava/util/Map;JJLjava/lang/String;ILjava/lang/Object;Lj3/l$a;)V

    return-object v1
.end method

.method public b(I)Lj3/l$b;
    .locals 0

    iput p1, p0, Lj3/l$b;->i:I

    return-object p0
.end method

.method public c([B)Lj3/l$b;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lj3/l$b;->d:[B

    return-object p0
.end method

.method public d(I)Lj3/l$b;
    .locals 0

    iput p1, p0, Lj3/l$b;->c:I

    return-object p0
.end method

.method public e(Ljava/util/Map;)Lj3/l$b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lj3/l$b;"
        }
    .end annotation

    iput-object p1, p0, Lj3/l$b;->e:Ljava/util/Map;

    return-object p0
.end method

.method public f(Ljava/lang/String;)Lj3/l$b;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lj3/l$b;->h:Ljava/lang/String;

    return-object p0
.end method

.method public g(J)Lj3/l$b;
    .locals 0

    iput-wide p1, p0, Lj3/l$b;->f:J

    return-object p0
.end method

.method public h(Landroid/net/Uri;)Lj3/l$b;
    .locals 0

    iput-object p1, p0, Lj3/l$b;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public i(Ljava/lang/String;)Lj3/l$b;
    .locals 0

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lj3/l$b;->a:Landroid/net/Uri;

    return-object p0
.end method
