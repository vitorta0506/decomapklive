.class public Lcom/tencent/imsdk/group/GroupInfoChangeItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private boolValueChanged:Z

.field private customInfoKey:Ljava/lang/String;

.field private groupInfoChangeType:I

.field private intValueChanged:I

.field private valueChanged:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoolValueChanged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->boolValueChanged:Z

    return v0
.end method

.method public getCustomInfoKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->customInfoKey:Ljava/lang/String;

    return-object v0
.end method

.method public getGroupInfoChangeType()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->groupInfoChangeType:I

    return v0
.end method

.method public getIntValueChanged()I
    .locals 1

    iget v0, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->intValueChanged:I

    return v0
.end method

.method public getValueChanged()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->valueChanged:Ljava/lang/String;

    return-object v0
.end method

.method public setCustomInfoKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->customInfoKey:Ljava/lang/String;

    return-void
.end method

.method public setGroupInfoChangeType(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->groupInfoChangeType:I

    return-void
.end method

.method public setValueChanged(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/imsdk/group/GroupInfoChangeItem;->valueChanged:Ljava/lang/String;

    return-void
.end method
