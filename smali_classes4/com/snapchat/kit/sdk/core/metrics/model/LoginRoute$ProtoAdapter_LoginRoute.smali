.class final Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute$ProtoAdapter_LoginRoute;
.super Lcom/squareup/wire/EnumAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ProtoAdapter_LoginRoute"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/EnumAdapter<",
        "Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 1

    const-class v0, Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    invoke-direct {p0, v0}, Lcom/squareup/wire/EnumAdapter;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method protected final fromValue(I)Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;->fromValue(I)Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    move-result-object p1

    return-object p1
.end method

.method protected final bridge synthetic fromValue(I)Lcom/squareup/wire/WireEnum;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute$ProtoAdapter_LoginRoute;->fromValue(I)Lcom/snapchat/kit/sdk/core/metrics/model/LoginRoute;

    move-result-object p1

    return-object p1
.end method
