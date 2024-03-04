.class public final Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private endsRow:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private startsRow:Ljava/util/NavigableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer$a;

    invoke-direct {v0}, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer$a;-><init>()V

    sput-object v0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 7
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->startsRow:Ljava/util/NavigableSet;

    .line 9
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    iput-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->endsRow:Ljava/util/NavigableSet;

    .line 10
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 11
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 14
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->startsRow:Ljava/util/NavigableSet;

    .line 15
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1, v2}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->endsRow:Ljava/util/NavigableSet;

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/util/NavigableSet;Ljava/util/NavigableSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->startsRow:Ljava/util/NavigableSet;

    .line 4
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 5
    iput-object p1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->startsRow:Ljava/util/NavigableSet;

    .line 6
    iput-object p2, p0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->endsRow:Ljava/util/NavigableSet;

    return-void
.end method


# virtual methods
.method a()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->endsRow:Ljava/util/NavigableSet;

    return-object v0
.end method

.method b()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->startsRow:Ljava/util/NavigableSet;

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    new-instance p2, Ljava/util/LinkedList;

    iget-object v0, p0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->startsRow:Ljava/util/NavigableSet;

    invoke-direct {p2, v0}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/beloo/widget/chipslayoutmanager/cache/CacheParcelableContainer;->endsRow:Ljava/util/NavigableSet;

    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
