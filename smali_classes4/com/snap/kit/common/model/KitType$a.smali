.class public final Lcom/snap/kit/common/model/KitType$a;
.super Lcom/squareup/wire/Message$Builder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/snap/kit/common/model/KitType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/squareup/wire/Message$Builder<",
        "Lcom/snap/kit/common/model/KitType;",
        "Lcom/snap/kit/common/model/KitType$a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/snap/kit/common/model/KitType;
    .locals 2

    new-instance v0, Lcom/snap/kit/common/model/KitType;

    invoke-super {p0}, Lcom/squareup/wire/Message$Builder;->buildUnknownFields()Lokio/ByteString;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/snap/kit/common/model/KitType;-><init>(Lokio/ByteString;)V

    return-object v0
.end method

.method public final bridge synthetic build()Lcom/squareup/wire/Message;
    .locals 1

    invoke-virtual {p0}, Lcom/snap/kit/common/model/KitType$a;->a()Lcom/snap/kit/common/model/KitType;

    move-result-object v0

    return-object v0
.end method
