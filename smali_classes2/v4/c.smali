.class final Lv4/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lv4/d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv4/d;

    invoke-direct {v0}, Lv4/d;-><init>()V

    sput-object v0, Lv4/c;->a:Lv4/d;

    return-void
.end method

.method static bridge synthetic a()Lv4/d;
    .locals 1

    sget-object v0, Lv4/c;->a:Lv4/d;

    return-object v0
.end method
