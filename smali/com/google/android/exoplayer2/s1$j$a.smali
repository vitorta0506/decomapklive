.class public final Lcom/google/android/exoplayer2/s1$j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/exoplayer2/s1$j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:Landroid/net/Uri;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private c:Landroid/os/Bundle;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/google/android/exoplayer2/s1$j$a;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/s1$j$a;->a:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/exoplayer2/s1$j$a;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/s1$j$a;->b:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/google/android/exoplayer2/s1$j$a;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/google/android/exoplayer2/s1$j$a;->c:Landroid/os/Bundle;

    return-object p0
.end method


# virtual methods
.method public d()Lcom/google/android/exoplayer2/s1$j;
    .locals 2

    new-instance v0, Lcom/google/android/exoplayer2/s1$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/android/exoplayer2/s1$j;-><init>(Lcom/google/android/exoplayer2/s1$j$a;Lcom/google/android/exoplayer2/s1$a;)V

    return-object v0
.end method

.method public e(Landroid/os/Bundle;)Lcom/google/android/exoplayer2/s1$j$a;
    .locals 0
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/s1$j$a;->c:Landroid/os/Bundle;

    return-object p0
.end method

.method public f(Landroid/net/Uri;)Lcom/google/android/exoplayer2/s1$j$a;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/s1$j$a;->a:Landroid/net/Uri;

    return-object p0
.end method

.method public g(Ljava/lang/String;)Lcom/google/android/exoplayer2/s1$j$a;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iput-object p1, p0, Lcom/google/android/exoplayer2/s1$j$a;->b:Ljava/lang/String;

    return-object p0
.end method
