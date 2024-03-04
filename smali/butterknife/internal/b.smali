.class public abstract Lbutterknife/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final ENABLE_AGAIN:Ljava/lang/Runnable;

.field static enabled:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lbutterknife/internal/a;->a:Lbutterknife/internal/a;

    sput-object v0, Lbutterknife/internal/b;->ENABLE_AGAIN:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .locals 0

    invoke-static {}, Lbutterknife/internal/b;->lambda$static$0()V

    return-void
.end method

.method private static synthetic lambda$static$0()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lbutterknife/internal/b;->enabled:Z

    return-void
.end method


# virtual methods
.method public abstract doClick(Landroid/view/View;)V
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    sget-boolean v0, Lbutterknife/internal/b;->enabled:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lbutterknife/internal/b;->enabled:Z

    .line 3
    sget-object v0, Lbutterknife/internal/b;->ENABLE_AGAIN:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-virtual {p0, p1}, Lbutterknife/internal/b;->doClick(Landroid/view/View;)V

    :cond_0
    return-void
.end method
