.class public Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;
.super Landroid/app/job/JobService;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    api = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;Landroid/app/job/JobParameters;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;->b(Landroid/app/job/JobParameters;)V

    return-void
.end method

.method private synthetic b(Landroid/app/job/JobParameters;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "backendName"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v1

    const-string v2, "extras"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "priority"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 4
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    const-string v4, "attemptNumber"

    invoke-virtual {v3, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/app/job/JobService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Ln1/t;->f(Landroid/content/Context;)V

    .line 6
    invoke-static {}, Ln1/o;->a()Ln1/o$a;

    move-result-object v4

    .line 7
    invoke-virtual {v4, v0}, Ln1/o$a;->b(Ljava/lang/String;)Ln1/o$a;

    move-result-object v0

    .line 8
    invoke-static {v2}, Lz1/a;->b(I)Lcom/google/android/datatransport/Priority;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln1/o$a;->d(Lcom/google/android/datatransport/Priority;)Ln1/o$a;

    move-result-object v0

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    .line 9
    invoke-static {v1, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ln1/o$a;->c([B)Ln1/o$a;

    .line 10
    :cond_0
    invoke-static {}, Ln1/t;->c()Ln1/t;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Ln1/t;->e()Lv1/o;

    move-result-object v1

    .line 12
    invoke-virtual {v0}, Ln1/o$a;->a()Ln1/o;

    move-result-object v0

    new-instance v2, Lv1/c;

    invoke-direct {v2, p0, p1}, Lv1/c;-><init>(Lcom/google/android/datatransport/runtime/scheduling/jobscheduling/JobInfoSchedulerService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v1, v0, v3, v2}, Lv1/o;->v(Ln1/o;ILjava/lang/Runnable;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
