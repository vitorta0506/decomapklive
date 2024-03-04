.class final Lca/b$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lca/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lca/b;


# direct methods
.method private constructor <init>(Lca/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lca/b$b;->a:Lca/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lca/b;Lca/b$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lca/b$b;-><init>(Lca/b;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/32 v0, 0x493e0

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 2
    invoke-static {}, Lca/b;->b()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Finishing activity due to inactivity"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iget-object p1, p0, Lca/b$b;->a:Lca/b;

    invoke-static {p1}, Lca/b;->c(Lca/b;)Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method
