.class public final synthetic Lcom/guochao/faceshow/utils/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lvh/o;


# static fields
.field public static final synthetic a:Lcom/guochao/faceshow/utils/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/guochao/faceshow/utils/a;

    invoke-direct {v0}, Lcom/guochao/faceshow/utils/a;-><init>()V

    sput-object v0, Lcom/guochao/faceshow/utils/a;->a:Lcom/guochao/faceshow/utils/a;

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

    check-cast p1, Ljava/lang/Integer;

    invoke-static {p1}, Lcom/guochao/faceshow/utils/DataCleanManager;->a(Ljava/lang/Integer;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method
