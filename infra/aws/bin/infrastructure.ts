#!/usr/bin/env node
import "source-map-support/register";
import * as cdk from "aws-cdk-lib";
import { WeddingRSVPBucket } from "../lib/wedding-rsvp-bucket";

const app = new cdk.App();
new WeddingRSVPBucket(app, "WeddingRSVPBucket", {
  env: {
    account: '847948271636',
    region: 'ap-southeast-2',
  }
});
