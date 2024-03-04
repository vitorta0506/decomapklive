.class public final Lcom/google/android/exoplayer2/l2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/l2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/l2$b$a;
    }
.end annotation


# static fields
.field public static final b:Lcom/google/android/exoplayer2/l2$b;

.field public static final c:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/l2$b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/exoplayer2/util/l;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/l2$b$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/l2$b$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/l2$b$a;->e()Lcom/google/android/exoplayer2/l2$b;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/l2$b;->b:Lcom/google/android/exoplayer2/l2$b;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/m2;->a:Lcom/google/android/exoplayer2/m2;

    sput-object v0, Lcom/google/android/exoplayer2/l2$b;->c:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/util/l;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/google/android/exoplayer2/l2$b;->a:Lcom/google/android/exoplayer2/util/l;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/util/l;Lcom/google/android/exoplayer2/l2$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/l2$b;-><init>(Lcom/google/android/exoplayer2/util/l;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/l2$b;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/l2$b;->d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/l2$b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/l2$b;)Lcom/google/android/exoplayer2/util/l;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/l2$b;->a:Lcom/google/android/exoplayer2/util/l;

    return-object p0
.end method

.method private static d(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/l2$b;
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lcom/google/android/exoplayer2/l2$b;->e(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getIntegerArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_0

    .line 2
    sget-object p0, Lcom/google/android/exoplayer2/l2$b;->b:Lcom/google/android/exoplayer2/l2$b;

    return-object p0

    .line 3
    :cond_0
    new-instance v1, Lcom/google/android/exoplayer2/l2$b$a;

    invoke-direct {v1}, Lcom/google/android/exoplayer2/l2$b$a;-><init>()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/google/android/exoplayer2/l2$b$a;->a(I)Lcom/google/android/exoplayer2/l2$b$a;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/exoplayer2/l2$b$a;->e()Lcom/google/android/exoplayer2/l2$b;

    move-result-object p0

    return-object p0
.end method

.method private static e(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public c(I)Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l2$b;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/l;->a(I)Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    .line 1
    :cond_0
    instance-of v0, p1, Lcom/google/android/exoplayer2/l2$b;

    if-nez v0, :cond_1

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/l2$b;

    .line 3
    iget-object v0, p0, Lcom/google/android/exoplayer2/l2$b;->a:Lcom/google/android/exoplayer2/util/l;

    iget-object p1, p1, Lcom/google/android/exoplayer2/l2$b;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0, p1}, Lcom/google/android/exoplayer2/util/l;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget-object v0, p0, Lcom/google/android/exoplayer2/l2$b;->a:Lcom/google/android/exoplayer2/util/l;

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/util/l;->hashCode()I

    move-result v0

    return v0
.end method
