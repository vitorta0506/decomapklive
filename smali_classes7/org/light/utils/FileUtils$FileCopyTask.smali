.class Lorg/light/utils/FileUtils$FileCopyTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/light/utils/FileUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FileCopyTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mDestPath:Ljava/lang/String;

.field mListener:Lorg/light/utils/FileUtils$OnFileCopyListener;

.field mSrcInputStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/light/utils/FileUtils$FileCopyTask;->mSrcInputStream:Ljava/io/InputStream;

    .line 3
    iput-object p2, p0, Lorg/light/utils/FileUtils$FileCopyTask;->mDestPath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 1

    .line 2
    iget-object p1, p0, Lorg/light/utils/FileUtils$FileCopyTask;->mSrcInputStream:Ljava/io/InputStream;

    iget-object v0, p0, Lorg/light/utils/FileUtils$FileCopyTask;->mDestPath:Ljava/lang/String;

    invoke-static {p1, v0}, Lorg/light/utils/FileUtils;->copyFile(Ljava/io/InputStream;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/light/utils/FileUtils$FileCopyTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lorg/light/utils/FileUtils$FileCopyTask;->mListener:Lorg/light/utils/FileUtils$OnFileCopyListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lorg/light/utils/FileUtils$FileCopyTask;->mListener:Lorg/light/utils/FileUtils$OnFileCopyListener;

    invoke-interface {p1}, Lorg/light/utils/FileUtils$OnFileCopyListener;->onCopySuccess()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lorg/light/utils/FileUtils$FileCopyTask;->mListener:Lorg/light/utils/FileUtils$OnFileCopyListener;

    invoke-interface {p1}, Lorg/light/utils/FileUtils$OnFileCopyListener;->onCopyFailed()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lorg/light/utils/FileUtils$FileCopyTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lorg/light/utils/FileUtils$FileCopyTask;->mListener:Lorg/light/utils/FileUtils$OnFileCopyListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lorg/light/utils/FileUtils$OnFileCopyListener;->onCopyStart()V

    :cond_0
    return-void
.end method

.method public setOnFileCopyListener(Lorg/light/utils/FileUtils$OnFileCopyListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/utils/FileUtils$FileCopyTask;->mListener:Lorg/light/utils/FileUtils$OnFileCopyListener;

    return-void
.end method
