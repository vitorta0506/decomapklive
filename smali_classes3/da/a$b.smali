.class final Lda/a$b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lda/a;
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
.field final synthetic a:Lda/a;


# direct methods
.method private constructor <init>(Lda/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lda/a$b;->a:Lda/a;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lda/a;Lda/a$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lda/a$b;-><init>(Lda/a;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    const-wide/16 v0, 0x3e8

    .line 1
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    iget-object p1, p0, Lda/a$b;->a:Lda/a;

    invoke-virtual {p1}, Lda/a;->b()V

    const/4 p1, 0x0

    return-object p1
.end method
