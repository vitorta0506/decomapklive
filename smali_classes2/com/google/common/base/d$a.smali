.class final Lcom/google/common/base/d$a;
.super Lcom/google/common/base/d$g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/base/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field static final b:Lcom/google/common/base/d$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/base/d$a;

    invoke-direct {v0}, Lcom/google/common/base/d$a;-><init>()V

    sput-object v0, Lcom/google/common/base/d$a;->b:Lcom/google/common/base/d$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const-string v0, "CharMatcher.any()"

    invoke-direct {p0, v0}, Lcom/google/common/base/d$g;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/CharSequence;)I
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public g(Ljava/lang/CharSequence;I)I
    .locals 0

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    .line 2
    invoke-static {p2, p1}, Lcom/google/common/base/o;->w(II)I

    if-ne p2, p1, :cond_0

    const/4 p2, -0x1

    :cond_0
    return p2
.end method

.method public j(C)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public k(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-static {p1}, Lcom/google/common/base/o;->s(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1
.end method

.method public l(Ljava/lang/CharSequence;)Z
    .locals 0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public m()Lcom/google/common/base/d;
    .locals 1

    invoke-static {}, Lcom/google/common/base/d;->n()Lcom/google/common/base/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic negate()Ljava/util/function/Predicate;
    .locals 1

    invoke-virtual {p0}, Lcom/google/common/base/d$a;->m()Lcom/google/common/base/d;

    move-result-object v0

    return-object v0
.end method
