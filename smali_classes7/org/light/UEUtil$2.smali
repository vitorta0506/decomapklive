.class final Lorg/light/UEUtil$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/epicgames/ue4/GameActivityBase$SingletonListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/UEUtil;->_startUE4(JLandroid/content/Context;IILorg/light/listener/AIDLOnUE4EngineInitFInishListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;)Lcom/epicgames/ue4/GameActivityBase;
    .locals 0

    invoke-static {p1}, Lcom/epicgames/ue4/GameActivity;->CreateSingleton(Landroid/content/Context;)Lcom/epicgames/ue4/GameActivityBase;

    move-result-object p1

    return-object p1
.end method
