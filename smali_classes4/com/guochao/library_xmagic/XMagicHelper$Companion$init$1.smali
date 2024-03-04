.class public final Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/guochao/library_xmagic/XMagicHelper$Companion;->init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001a\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016\u00a8\u0006\u0008"
    }
    d2 = {
        "com/guochao/library_xmagic/XMagicHelper$Companion$init$1",
        "Lcom/tencent/xmagic/license/LicenceCheck$LicenceCheckListener;",
        "onLicenceLoaded",
        "",
        "p0",
        "",
        "p1",
        "",
        "lib_xmagic_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x7,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $context:Landroid/content/Context;

.field final synthetic $mLicenceCheck:Lcom/tencent/xmagic/license/LicenceCheck;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/xmagic/license/LicenceCheck;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$1;->$mLicenceCheck:Lcom/tencent/xmagic/license/LicenceCheck;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLicenceLoaded(ILjava/lang/String;)V
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    sget-object p1, Lcom/guochao/library_xmagic/XMagicHelper;->Companion:Lcom/guochao/library_xmagic/XMagicHelper$Companion;

    iget-object p2, p0, Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$1;->$context:Landroid/content/Context;

    iget-object v0, p0, Lcom/guochao/library_xmagic/XMagicHelper$Companion$init$1;->$mLicenceCheck:Lcom/tencent/xmagic/license/LicenceCheck;

    invoke-static {p1, p2, v0}, Lcom/guochao/library_xmagic/XMagicHelper$Companion;->access$checkLicence(Lcom/guochao/library_xmagic/XMagicHelper$Companion;Landroid/content/Context;Lcom/tencent/xmagic/license/LicenceCheck;)V

    return-void
.end method
