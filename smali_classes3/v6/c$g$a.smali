.class Lv6/c$g$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv6/c$g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lv6/c$g;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lv6/c$g;

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lv6/c$g;-><init>(Ljava/util/Map;Lv6/c$a;)V

    sput-object v0, Lv6/c$g$a;->a:Lv6/c$g;

    return-void
.end method

.method static synthetic a()Lv6/c$g;
    .locals 1

    sget-object v0, Lv6/c$g$a;->a:Lv6/c$g;

    return-object v0
.end method
