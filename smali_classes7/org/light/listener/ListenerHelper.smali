.class public abstract Lorg/light/listener/ListenerHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public aiDataListener:Lorg/light/listener/OnAIDataListener;

.field public tipsListener:Lorg/light/listener/OnTipsStatusListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract onTipsNeedHide(Ljava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onTipsNeedShow(Ljava/lang/String;Ljava/lang/String;II)V
.end method
