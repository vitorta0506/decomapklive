.class public final synthetic Lcom/google/common/collect/x2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/common/collect/s2$d$a;


# static fields
.field public static final synthetic a:Lcom/google/common/collect/x2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/common/collect/x2;

    invoke-direct {v0}, Lcom/google/common/collect/x2;-><init>()V

    sput-object v0, Lcom/google/common/collect/x2;->a:Lcom/google/common/collect/x2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)Ljava/util/Spliterator;
    .locals 8

    new-instance v7, Lcom/google/common/collect/s2$e;

    move-object v0, v7

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-wide v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/google/common/collect/s2$e;-><init>(Ljava/util/Spliterator;Ljava/util/Spliterator;Ljava/util/function/Function;IJ)V

    return-object v7
.end method
