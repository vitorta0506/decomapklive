.class public final synthetic Lc2/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc2/i$a$a;


# static fields
.field public static final synthetic a:Lc2/g;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lc2/g;

    invoke-direct {v0}, Lc2/g;-><init>()V

    sput-object v0, Lc2/g;->a:Lc2/g;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/reflect/Constructor;
    .locals 1

    invoke-static {}, Lc2/i;->c()Ljava/lang/reflect/Constructor;

    move-result-object v0

    return-object v0
.end method
