.class public final Lcom/google/android/play/core/review/i;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Lcom/google/android/play/core/internal/g;


# instance fields
.field a:Lcom/google/android/play/core/internal/s;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation
.end field

.field private final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/play/core/internal/g;

    const-string v1, "ReviewService"

    invoke-direct {v0, v1}, Lcom/google/android/play/core/internal/g;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/android/play/core/review/i;->c:Lcom/google/android/play/core/internal/g;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/play/core/review/i;->b:Ljava/lang/String;

    .line 2
    invoke-static {p1}, Lcom/google/android/play/core/internal/a1;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.google.android.finsky.BIND_IN_APP_REVIEW_SERVICE"

    .line 3
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.vending"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    .line 4
    new-instance v0, Lcom/google/android/play/core/internal/s;

    sget-object v4, Lcom/google/android/play/core/review/i;->c:Lcom/google/android/play/core/internal/g;

    sget-object v7, Lcom/google/android/play/core/review/e;->a:Lcom/google/android/play/core/review/e;

    const/4 v8, 0x0

    const-string v5, "com.google.android.finsky.inappreviewservice.InAppReviewService"

    move-object v2, v0

    move-object v3, p1

    .line 5
    invoke-direct/range {v2 .. v8}, Lcom/google/android/play/core/internal/s;-><init>(Landroid/content/Context;Lcom/google/android/play/core/internal/g;Ljava/lang/String;Landroid/content/Intent;Lcom/google/android/play/core/internal/n;Lcom/google/android/play/core/internal/m;)V

    iput-object v0, p0, Lcom/google/android/play/core/review/i;->a:Lcom/google/android/play/core/internal/s;

    :cond_0
    return-void
.end method

.method static bridge synthetic a()Lcom/google/android/play/core/internal/g;
    .locals 1

    sget-object v0, Lcom/google/android/play/core/review/i;->c:Lcom/google/android/play/core/internal/g;

    return-object v0
.end method

.method static bridge synthetic c(Lcom/google/android/play/core/review/i;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/play/core/review/i;->b:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public final b()Ld5/d;
    .locals 4

    .line 1
    sget-object v0, Lcom/google/android/play/core/review/i;->c:Lcom/google/android/play/core/internal/g;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/android/play/core/review/i;->b:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "requestInAppReview (%s)"

    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/g;->d(Ljava/lang/String;[Ljava/lang/Object;)I

    iget-object v1, p0, Lcom/google/android/play/core/review/i;->a:Lcom/google/android/play/core/internal/s;

    if-nez v1, :cond_0

    new-array v1, v3, [Ljava/lang/Object;

    const-string v2, "Play Store app is either not installed or not the official version"

    .line 2
    invoke-virtual {v0, v2, v1}, Lcom/google/android/play/core/internal/g;->b(Ljava/lang/String;[Ljava/lang/Object;)I

    new-instance v0, Lcom/google/android/play/core/review/ReviewException;

    const/4 v1, -0x1

    .line 3
    invoke-direct {v0, v1}, Lcom/google/android/play/core/review/ReviewException;-><init>(I)V

    invoke-static {v0}, Ld5/f;->b(Ljava/lang/Exception;)Ld5/d;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ld5/o;

    .line 4
    invoke-direct {v0}, Ld5/o;-><init>()V

    iget-object v1, p0, Lcom/google/android/play/core/review/i;->a:Lcom/google/android/play/core/internal/s;

    new-instance v2, Lcom/google/android/play/core/review/f;

    invoke-direct {v2, p0, v0, v0}, Lcom/google/android/play/core/review/f;-><init>(Lcom/google/android/play/core/review/i;Ld5/o;Ld5/o;)V

    .line 5
    invoke-virtual {v1, v2, v0}, Lcom/google/android/play/core/internal/s;->q(Lcom/google/android/play/core/internal/h;Ld5/o;)V

    invoke-virtual {v0}, Ld5/o;->a()Ld5/d;

    move-result-object v0

    return-object v0
.end method
