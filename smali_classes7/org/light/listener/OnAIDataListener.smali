.class public interface abstract Lorg/light/listener/OnAIDataListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onBodyDataUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/light/bean/BodyData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onFaceDataUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/light/bean/FaceData;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onHandDataUpdated(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/light/bean/HandData;",
            ">;)V"
        }
    .end annotation
.end method
