.class public Lcom/guochao/faceshow/aaspring/utils/VipUserInfoUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final DUMMY:Lb8/g;

.field private static final FIELDS:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/guochao/faceshow/aaspring/utils/VipUserInfoUtil$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/utils/VipUserInfoUtil$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/VipUserInfoUtil;->DUMMY:Lb8/g;

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/utils/VipUserInfoUtil;->FIELDS:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getVipUserInfo(Lp7/h;)Lb8/g;
    .locals 3
    .param p0    # Lp7/h;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/guochao/faceshow/aaspring/utils/VipUserInfoUtil;->FIELDS:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/reflect/Field;

    if-nez v2, :cond_0

    const-string v2, "userVipMsg"

    .line 3
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 4
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 6
    :cond_0
    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 7
    instance-of v0, p0, Lb8/g;

    if-eqz v0, :cond_1

    .line 8
    check-cast p0, Lb8/g;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    .line 9
    :goto_0
    invoke-virtual {p0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 10
    :cond_1
    sget-object p0, Lcom/guochao/faceshow/aaspring/utils/VipUserInfoUtil;->DUMMY:Lb8/g;

    return-object p0
.end method
