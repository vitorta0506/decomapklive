.class Leh/u2$b;
.super Leh/u2$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Leh/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:I

.field private c:I


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Leh/u2$c;-><init>(Leh/u2$a;)V

    const-string v0, "str"

    .line 3
    invoke-static {p1, v0}, Lcom/google/common/base/o;->t(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Leh/u2$b;->a:Ljava/lang/String;

    .line 4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    iput p1, p0, Leh/u2$b;->b:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;Leh/u2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Leh/u2$b;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2

    iget v0, p0, Leh/u2$b;->b:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public e()B
    .locals 3

    iget-object v0, p0, Leh/u2$b;->a:Ljava/lang/String;

    iget v1, p0, Leh/u2$b;->c:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Leh/u2$b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    int-to-byte v0, v0

    return v0
.end method

.method public f()J
    .locals 4

    iget v0, p0, Leh/u2$b;->b:I

    int-to-long v0, v0

    iget v2, p0, Leh/u2$b;->c:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    return-wide v0
.end method
