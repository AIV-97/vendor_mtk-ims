.class public Lcom/mediatek/ims/ImsAdapter$Util;
.super Ljava/lang/Object;
.source "ImsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/ims/ImsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Util"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 687
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDefaultVoltePhoneId()I
    .locals 2

    .line 696
    nop

    .line 697
    const/4 v0, 0x1

    const-string v1, "persist.vendor.radio.simswitch"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    sub-int/2addr v1, v0

    .line 698
    .local v1, "phoneId":I
    if-ltz v1, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-lt v1, v0, :cond_1

    .line 699
    :cond_0
    const/4 v1, -0x1

    .line 701
    :cond_1
    return v1
.end method
