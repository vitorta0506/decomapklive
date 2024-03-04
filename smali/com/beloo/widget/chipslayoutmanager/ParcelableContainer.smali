.class Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private anchorViewState:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

.field private cacheNormalizationPositionMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private orientation:I

.field private orientationCacheMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer$a;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer$a;-><init>()V

    sput-object v0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->orientationCacheMap:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->cacheNormalizationPositionMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->cacheNormalizationPositionMap:Landroid/util/SparseArray;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->orientationCacheMap:Landroid/util/SparseArray;

    .line 9
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->cacheNormalizationPositionMap:Landroid/util/SparseArray;

    .line 10
    sget-object v0, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->anchorViewState:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    .line 11
    const-class v0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->orientationCacheMap:Landroid/util/SparseArray;

    .line 12
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readSparseArray(Ljava/lang/ClassLoader;)Landroid/util/SparseArray;

    move-result-object v0

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->cacheNormalizationPositionMap:Landroid/util/SparseArray;

    .line 13
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->orientation:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method a()Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;
    .locals 1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->anchorViewState:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    return-object v0
.end method

.method b(I)Ljava/lang/Integer;
    .locals 1
    .annotation build Landroidx/annotation/IntRange;
        from = 0x0L
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->cacheNormalizationPositionMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    return-object p1
.end method

.method c()I
    .locals 1

    iget v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->orientation:I

    return v0
.end method

.method d(I)Landroid/os/Parcelable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->orientationCacheMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Parcelable;

    return-object p1
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method e(Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;)V
    .locals 0

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->anchorViewState:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    return-void
.end method

.method f(ILjava/lang/Integer;)V
    .locals 1
    .param p2    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->cacheNormalizationPositionMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method g(I)V
    .locals 0

    iput p1, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->orientation:I

    return-void
.end method

.method h(ILandroid/os/Parcelable;)V
    .locals 1

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->orientationCacheMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->anchorViewState:Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;

    invoke-virtual {v0, p1, p2}, Lcom/beloo/widget/chipslayoutmanager/anchor/AnchorViewState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->orientationCacheMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 3
    iget-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->cacheNormalizationPositionMap:Landroid/util/SparseArray;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSparseArray(Landroid/util/SparseArray;)V

    .line 4
    iget p2, p0, Lcom/beloo/widget/chipslayoutmanager/ParcelableContainer;->orientation:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
