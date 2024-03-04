.class final Lorg/light/UEUtil$6;
.super Lorg/light/listener/AIDLOnBindServiceListener$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/light/UEUtil;->initUEAIDLInterface(Landroid/content/Context;Lorg/light/UEBindServiceListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lorg/light/UEBindServiceListener;


# direct methods
.method constructor <init>(Lorg/light/UEBindServiceListener;)V
    .locals 0

    iput-object p1, p0, Lorg/light/UEUtil$6;->val$listener:Lorg/light/UEBindServiceListener;

    invoke-direct {p0}, Lorg/light/listener/AIDLOnBindServiceListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindServiceStatus(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lorg/light/UEUtil$6;->val$listener:Lorg/light/UEBindServiceListener;

    invoke-interface {v0, p1}, Lorg/light/UEBindServiceListener;->onBindServiceStatus(Z)V

    return-void
.end method
