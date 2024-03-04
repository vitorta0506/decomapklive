.class public final Lcom/google/android/exoplayer2/s1$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/exoplayer2/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/s1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "j"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/exoplayer2/s1$j$a;
    }
.end annotation


# static fields
.field public static final d:Lcom/google/android/exoplayer2/s1$j;

.field public static final e:Lcom/google/android/exoplayer2/h$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/exoplayer2/h$a<",
            "Lcom/google/android/exoplayer2/s1$j;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/s1$j$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/s1$j$a;-><init>()V

    invoke-virtual {v0}, Lcom/google/android/exoplayer2/s1$j$a;->d()Lcom/google/android/exoplayer2/s1$j;

    move-result-object v0

    sput-object v0, Lcom/google/android/exoplayer2/s1$j;->d:Lcom/google/android/exoplayer2/s1$j;

    .line 2
    sget-object v0, Lcom/google/android/exoplayer2/v1;->a:Lcom/google/android/exoplayer2/v1;

    sput-object v0, Lcom/google/android/exoplayer2/s1$j;->e:Lcom/google/android/exoplayer2/h$a;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/exoplayer2/s1$j$a;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {p1}, Lcom/google/android/exoplayer2/s1$j$a;->a(Lcom/google/android/exoplayer2/s1$j$a;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$j;->a:Landroid/net/Uri;

    .line 4
    invoke-static {p1}, Lcom/google/android/exoplayer2/s1$j$a;->b(Lcom/google/android/exoplayer2/s1$j$a;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/exoplayer2/s1$j;->b:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/google/android/exoplayer2/s1$j$a;->c(Lcom/google/android/exoplayer2/s1$j$a;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/exoplayer2/s1$j;->c:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/exoplayer2/s1$j$a;Lcom/google/android/exoplayer2/s1$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/exoplayer2/s1$j;-><init>(Lcom/google/android/exoplayer2/s1$j$a;)V

    return-void
.end method

.method public static synthetic a(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/s1$j;
    .locals 0

    invoke-static {p0}, Lcom/google/android/exoplayer2/s1$j;->c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/s1$j;

    move-result-object p0

    return-object p0
.end method

.method private static b(I)Ljava/lang/String;
    .locals 1

    const/16 v0, 0x24

    invoke-static {p0, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic c(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/s1$j;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/exoplayer2/s1$j$a;

    invoke-direct {v0}, Lcom/google/android/exoplayer2/s1$j$a;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Lcom/google/android/exoplayer2/s1$j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/s1$j$a;->f(Landroid/net/Uri;)Lcom/google/android/exoplayer2/s1$j$a;

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Lcom/google/android/exoplayer2/s1$j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/exoplayer2/s1$j$a;->g(Ljava/lang/String;)Lcom/google/android/exoplayer2/s1$j$a;

    move-result-object v0

    const/4 v1, 0x2

    .line 4
    invoke-static {v1}, Lcom/google/android/exoplayer2/s1$j;->b(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/google/android/exoplayer2/s1$j$a;->e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/s1$j$a;

    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/google/android/exoplayer2/s1$j$a;->d()Lcom/google/android/exoplayer2/s1$j;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lcom/google/android/exoplayer2/s1$j;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Lcom/google/android/exoplayer2/s1$j;

    .line 3
    iget-object v1, p0, Lcom/google/android/exoplayer2/s1$j;->a:Landroid/net/Uri;

    iget-object v3, p1, Lcom/google/android/exoplayer2/s1$j;->a:Landroid/net/Uri;

    invoke-static {v1, v3}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/google/android/exoplayer2/s1$j;->b:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/exoplayer2/s1$j;->b:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/google/android/exoplayer2/util/l0;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/exoplayer2/s1$j;->a:Landroid/net/Uri;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/net/Uri;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v2, p0, Lcom/google/android/exoplayer2/s1$j;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method
