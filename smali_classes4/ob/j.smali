.class final Lob/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final h:Landroid/os/Handler;


# instance fields
.field private final a:Lob/c;

.field private b:Lob/n;

.field private final c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private final f:Ljava/lang/Runnable;

.field private final g:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lob/j;->h:Landroid/os/Handler;

    return-void
.end method

.method constructor <init>(Landroid/app/Activity;Lob/c;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lob/j;-><init>(Landroid/content/Context;Lob/c;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lob/j;->e:Z

    .line 3
    new-instance p2, Lob/n;

    invoke-direct {p2, p1}, Lob/n;-><init>(Landroid/app/Activity;)V

    iput-object p2, p0, Lob/j;->b:Lob/n;

    return-void
.end method

.method constructor <init>(Landroid/app/Application;Lob/c;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lob/j;-><init>(Landroid/content/Context;Lob/c;)V

    const/4 p2, 0x1

    .line 5
    iput-boolean p2, p0, Lob/j;->e:Z

    .line 6
    new-instance p2, Lob/n;

    invoke-direct {p2, p1}, Lob/n;-><init>(Landroid/app/Application;)V

    iput-object p2, p0, Lob/j;->b:Lob/n;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lob/c;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Lob/j$a;

    invoke-direct {v0, p0}, Lob/j$a;-><init>(Lob/j;)V

    iput-object v0, p0, Lob/j;->f:Ljava/lang/Runnable;

    .line 9
    new-instance v0, Lob/j$b;

    invoke-direct {v0, p0}, Lob/j$b;-><init>(Lob/j;)V

    iput-object v0, p0, Lob/j;->g:Ljava/lang/Runnable;

    .line 10
    iput-object p2, p0, Lob/j;->a:Lob/c;

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lob/j;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lob/j;)Lob/n;
    .locals 0

    iget-object p0, p0, Lob/j;->b:Lob/n;

    return-object p0
.end method

.method static synthetic b(Lob/j;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lob/j;->c:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lob/j;)Lob/c;
    .locals 0

    iget-object p0, p0, Lob/j;->a:Lob/c;

    return-object p0
.end method

.method static synthetic d(Lob/j;)Z
    .locals 0

    iget-boolean p0, p0, Lob/j;->e:Z

    return p0
.end method

.method static synthetic e()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lob/j;->h:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic f(Lob/j;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lob/j;->l(Landroid/view/View;)V

    return-void
.end method

.method private h()Z
    .locals 2

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private l(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "accessibility"

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    .line 3
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    return-void

    :cond_0
    const/16 v2, 0x40

    .line 4
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v2

    .line 5
    const-class v3, Landroid/widget/Toast;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p1, v2}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 8
    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method


# virtual methods
.method g()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lob/j;->i()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lob/j;->h:Landroid/os/Handler;

    iget-object v1, p0, Lob/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    invoke-direct {p0}, Lob/j;->h()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, p0, Lob/j;->g:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v1, p0, Lob/j;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v1, p0, Lob/j;->g:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method

.method i()Z
    .locals 1

    iget-boolean v0, p0, Lob/j;->d:Z

    return v0
.end method

.method j(Z)V
    .locals 0

    iput-boolean p1, p0, Lob/j;->d:Z

    return-void
.end method

.method k()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lob/j;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lob/j;->h()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lob/j;->f:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_1
    sget-object v0, Lob/j;->h:Landroid/os/Handler;

    iget-object v1, p0, Lob/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 5
    iget-object v1, p0, Lob/j;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
