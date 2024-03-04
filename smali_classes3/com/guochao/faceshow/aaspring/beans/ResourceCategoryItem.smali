.class public Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private childCode:Ljava/lang/String;

.field private fSourceTypeId:I

.field private gifList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;"
        }
    .end annotation
.end field

.field private isChild:I

.field private isToken:Ljava/lang/String;

.field private isTokenShow:Ljava/lang/String;

.field private isshow:I

.field private isuse:I

.field private md5:Ljava/lang/String;

.field private moduleCode:I

.field private sortNum:I

.field private sourceCode:Ljava/lang/String;

.field private sourceTypeName:Ljava/lang/String;

.field private sourceTypeNameLang:Ljava/lang/String;

.field private sourctTypeId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem$1;

    invoke-direct {v0}, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem$1;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourctTypeId:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceTypeName:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceTypeNameLang:Ljava/lang/String;

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isChild:I

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->fSourceTypeId:I

    .line 8
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceCode:Ljava/lang/String;

    .line 9
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->moduleCode:I

    .line 10
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isshow:I

    .line 11
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isuse:I

    .line 12
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sortNum:I

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->md5:Ljava/lang/String;

    .line 14
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->gifList:Ljava/util/List;

    .line 15
    const-class v1, Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 16
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isToken:Ljava/lang/String;

    .line 17
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isTokenShow:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getChildCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->childCode:Ljava/lang/String;

    return-object v0
.end method

.method public getFSourceTypeId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->fSourceTypeId:I

    return v0
.end method

.method public getGifList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->gifList:Ljava/util/List;

    return-object v0
.end method

.method public getIsChild()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isChild:I

    return v0
.end method

.method public getIsToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isToken:Ljava/lang/String;

    return-object v0
.end method

.method public getIsTokenShow()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isTokenShow:Ljava/lang/String;

    return-object v0
.end method

.method public getIsshow()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isshow:I

    return v0
.end method

.method public getIsuse()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isuse:I

    return v0
.end method

.method public getMd5()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->md5:Ljava/lang/String;

    return-object v0
.end method

.method public getModuleCode()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->moduleCode:I

    return v0
.end method

.method public getSortNum()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sortNum:I

    return v0
.end method

.method public getSourceCode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceCode:Ljava/lang/String;

    return-object v0
.end method

.method public getSourceTypeName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceTypeName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceTypeName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourceTypeNameLang()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceTypeNameLang:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, ""

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceTypeNameLang:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSourctTypeId()I
    .locals 1

    iget v0, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourctTypeId:I

    return v0
.end method

.method public setChildCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->childCode:Ljava/lang/String;

    return-void
.end method

.method public setFSourceTypeId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->fSourceTypeId:I

    return-void
.end method

.method public setGifList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/guochao/faceshow/aaspring/beans/ResourceListItemBean;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->gifList:Ljava/util/List;

    return-void
.end method

.method public setIsChild(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isChild:I

    return-void
.end method

.method public setIsToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isToken:Ljava/lang/String;

    return-void
.end method

.method public setIsTokenShow(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isTokenShow:Ljava/lang/String;

    return-void
.end method

.method public setIsshow(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isshow:I

    return-void
.end method

.method public setIsuse(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isuse:I

    return-void
.end method

.method public setMd5(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->md5:Ljava/lang/String;

    return-void
.end method

.method public setModuleCode(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->moduleCode:I

    return-void
.end method

.method public setSortNum(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sortNum:I

    return-void
.end method

.method public setSourceCode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceCode:Ljava/lang/String;

    return-void
.end method

.method public setSourceTypeName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceTypeName:Ljava/lang/String;

    return-void
.end method

.method public setSourceTypeNameLang(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceTypeNameLang:Ljava/lang/String;

    return-void
.end method

.method public setSourctTypeId(I)V
    .locals 0

    iput p1, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourctTypeId:I

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourctTypeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceTypeName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceTypeNameLang:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isChild:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->fSourceTypeId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sourceCode:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 7
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->moduleCode:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 8
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isshow:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isuse:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 10
    iget p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->sortNum:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 11
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->md5:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->gifList:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 13
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isToken:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/guochao/faceshow/aaspring/beans/ResourceCategoryItem;->isTokenShow:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
