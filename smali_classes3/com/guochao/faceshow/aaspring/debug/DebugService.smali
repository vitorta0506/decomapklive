.class public Lcom/guochao/faceshow/aaspring/debug/DebugService;
.super Landroid/app/Service;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/guochao/faceshow/aaspring/debug/DebugService$e;,
        Lcom/guochao/faceshow/aaspring/debug/DebugService$c;,
        Lcom/guochao/faceshow/aaspring/debug/DebugService$d;
    }
.end annotation


# instance fields
.field a:Landroid/view/View;

.field b:Landroid/widget/ImageView;

.field c:Landroid/widget/Button;

.field d:Landroidx/recyclerview/widget/RecyclerView;

.field e:Landroid/view/WindowManager;

.field f:Landroid/view/WindowManager$LayoutParams;

.field g:Landroid/widget/Button;

.field h:I

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lx7/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->i:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/guochao/faceshow/aaspring/debug/DebugService;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->i:Ljava/util/List;

    return-object p0
.end method

.method private b()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "11"

    invoke-direct {v0, p0, v1}, Landroidx/core/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string v1, "\u8c03\u8bd5\u6a21\u5f0f\u5df2\u5f00\u542f"

    .line 2
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "\u6b64\u901a\u77e5\u53ea\u4f1a\u5728\u6d4b\u8bd5\u7248\u672c\u51fa\u73b0\uff0c\u6b63\u5f0f\u7248\u672c\u4e0d\u4f1a\u5f00\u542f"

    .line 3
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, ""

    .line 4
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setTicker(Ljava/lang/CharSequence;)Landroidx/core/app/NotificationCompat$Builder;

    const v1, 0x7f080359

    .line 5
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setSmallIcon(I)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroidx/core/app/NotificationCompat$Builder;

    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Landroidx/core/app/NotificationCompat$Builder;->setOngoing(Z)Landroidx/core/app/NotificationCompat$Builder;

    const-string v1, "notification"

    .line 8
    invoke-virtual {p0, v1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 9
    invoke-virtual {v0}, Landroidx/core/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/16 v2, 0x2710

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->e:Landroid/view/WindowManager;

    if-eqz v2, :cond_0

    .line 2
    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 3
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a:Landroid/view/View;

    .line 4
    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->e:Landroid/view/WindowManager;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a:Landroid/view/View;

    if-nez v0, :cond_2

    .line 6
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 7
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->heightPixels:I

    div-int/lit8 v2, v2, 0x3

    .line 8
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v3, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->h:I

    const-string v3, "window"

    .line 9
    invoke-virtual {p0, v3}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->e:Landroid/view/WindowManager;

    .line 10
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->f:Landroid/view/WindowManager$LayoutParams;

    .line 11
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x1a

    if-lt v4, v5, :cond_1

    const/16 v4, 0x7f6

    .line 12
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    goto :goto_0

    :cond_1
    const/16 v4, 0x7d2

    .line 13
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    :goto_0
    const v4, 0x20008

    .line 14
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v4, 0x1

    .line 15
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v4, -0x2

    .line 16
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 17
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    const v4, 0x800033

    .line 18
    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 19
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f0d02bb

    invoke-virtual {v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a:Landroid/view/View;

    .line 20
    iget-object v4, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->e:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->f:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v4, v3, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a:Landroid/view/View;

    const v4, 0x7f0a078a

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->b:Landroid/widget/ImageView;

    .line 22
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a:Landroid/view/View;

    const v4, 0x7f0a095c

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v3, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 23
    new-instance v4, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v4, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 24
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->d:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Lcom/guochao/faceshow/aaspring/debug/DebugService$d;

    invoke-direct {v4, p0, v1}, Lcom/guochao/faceshow/aaspring/debug/DebugService$d;-><init>(Lcom/guochao/faceshow/aaspring/debug/DebugService;Lcom/guochao/faceshow/aaspring/debug/DebugService$a;)V

    invoke-virtual {v3, v4}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 25
    iget-object v3, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->b:Landroid/widget/ImageView;

    new-instance v4, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;

    invoke-direct {v4, p0, v1}, Lcom/guochao/faceshow/aaspring/debug/DebugService$e;-><init>(Lcom/guochao/faceshow/aaspring/debug/DebugService;Lcom/guochao/faceshow/aaspring/debug/DebugService$a;)V

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 26
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a:Landroid/view/View;

    const v3, 0x7f0a0787

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->c:Landroid/widget/Button;

    .line 27
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 28
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 29
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 30
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->d:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 31
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a:Landroid/view/View;

    const v1, 0x7f0a0202

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->g:Landroid/widget/Button;

    .line 32
    new-instance v1, Lcom/guochao/faceshow/aaspring/debug/DebugService$a;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/debug/DebugService$a;-><init>(Lcom/guochao/faceshow/aaspring/debug/DebugService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->c:Landroid/widget/Button;

    new-instance v1, Lcom/guochao/faceshow/aaspring/debug/DebugService$b;

    invoke-direct {v1, p0}, Lcom/guochao/faceshow/aaspring/debug/DebugService$b;-><init>(Lcom/guochao/faceshow/aaspring/debug/DebugService;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    new-instance p1, Lcom/guochao/faceshow/aaspring/debug/DebugService$c;

    invoke-direct {p1, p0}, Lcom/guochao/faceshow/aaspring/debug/DebugService$c;-><init>(Lcom/guochao/faceshow/aaspring/debug/DebugService;)V

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->e:Landroid/view/WindowManager;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const-string v0, "notification"

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v1, 0x2710

    .line 5
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->cancel(I)V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/debug/DebugService;->b()V

    .line 2
    invoke-direct {p0}, Lcom/guochao/faceshow/aaspring/debug/DebugService;->c()V

    .line 3
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result p1

    return p1
.end method

.method public onTaskRemoved(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onTaskRemoved(Landroid/content/Intent;)V

    .line 2
    iget-object p1, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->e:Landroid/view/WindowManager;

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/debug/DebugService;->a:Landroid/view/View;

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    const-string p1, "notification"

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    if-eqz p1, :cond_1

    const/16 v0, 0x2710

    .line 6
    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->cancel(I)V

    :cond_1
    return-void
.end method
