.class final Lcom/snapchat/kit/sdk/f$e;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/snapchat/kit/sdk/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/snapchat/kit/sdk/f;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/snapchat/kit/sdk/f$e;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/snapchat/kit/sdk/f;B)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/snapchat/kit/sdk/f$e;-><init>(Lcom/snapchat/kit/sdk/f;)V

    return-void
.end method


# virtual methods
.method protected final synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/snapchat/kit/sdk/f$e;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/snapchat/kit/sdk/f;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {p1}, Lcom/snapchat/kit/sdk/f;->p()I

    return-object v0
.end method
