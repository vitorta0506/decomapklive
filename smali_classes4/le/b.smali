.class public final Lle/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Leg/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Leg/c<",
        "Lle/a;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lke/c;Lde/b;Lke/a;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)Lle/a;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lke/c;",
            "Lde/b<",
            "Lcom/snapchat/kit/sdk/core/metrics/model/ServerEvent;",
            ">;",
            "Lke/a;",
            "Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;",
            "Z)",
            "Lle/a;"
        }
    .end annotation

    new-instance v9, Lle/a;

    move-object v0, v9

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lle/a;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lke/c;Lde/b;Lke/a;Lcom/snapchat/kit/sdk/core/metrics/model/KitPluginType;Z)V

    return-object v9
.end method
