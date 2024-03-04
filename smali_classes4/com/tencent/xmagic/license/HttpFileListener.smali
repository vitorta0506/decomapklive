.class public interface abstract Lcom/tencent/xmagic/license/HttpFileListener;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# virtual methods
.method public abstract onProcessEnd()V
.end method

.method public abstract onProgressUpdate(I)V
.end method

.method public abstract onSaveFailed(Ljava/io/File;Ljava/lang/Exception;)V
.end method

.method public abstract onSaveSuccess(Ljava/io/File;Ljava/lang/String;)V
.end method
