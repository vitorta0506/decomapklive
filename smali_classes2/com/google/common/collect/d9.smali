.class public final synthetic Lcom/google/common/collect/d9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/base/h;


# static fields
.field public static final synthetic a:Lcom/google/common/collect/d9;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/d9;

    invoke-direct {v0}, Lcom/google/common/collect/d9;-><init>()V

    sput-object v0, Lcom/google/common/collect/d9;->a:Lcom/google/common/collect/d9;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/util/Map;

    invoke-static {p1}, Lcom/google/common/collect/TreeBasedTable;->c(Ljava/util/Map;)Ljava/util/Iterator;

    move-result-object p1

    return-object p1
.end method
